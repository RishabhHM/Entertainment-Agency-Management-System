-- Query 1 : List the concerts organized by agencies where the net profit exceeded a certain threshold.
SELECT c.ConcertID, c.Venue, c.Date, oc.AgencyID, s.NetProfit
FROM Concert c
JOIN OrganizeConcert oc ON c.ConcertID = oc.ConcertID
JOIN Stats s ON c.StatsID = s.StatsID
WHERE s.NetProfit > 250000000
ORDER BY s.NetProfit DESC;

-- Query 2 : Determine the total revenue generated from concerts organized by each agency.
SELECT a.AgencyID, a.Name, SUM(s.Revenue) AS TotalRevenue
FROM Concert c
JOIN OrganizeConcert oc ON c.ConcertID = oc.ConcertID
JOIN Agency a ON oc.AgencyID = a.AgencyID
JOIN Stats s ON c.StatsID = s.StatsID
GROUP BY a.AgencyID
ORDER BY TotalRevenue DESC;

-- Query 3 : Identify the agency that has the highest average revenue per concert.
SELECT a.AgencyID, a.Name, AVG(s.Revenue) AS AvgRevenuePerConcert
FROM Concert c
JOIN OrganizeConcert oc ON c.ConcertID = oc.ConcertID
JOIN Agency a ON oc.AgencyID = a.AgencyID
JOIN Stats s ON c.StatsID = s.StatsID
GROUP BY a.AgencyID, a.Name
ORDER BY AvgRevenuePerConcert DESC
LIMIT 10;

-- Query 4 : List the companies that have endorsed artists with the highest fees.
SELECT 
    c.Name AS CompanyName, e.Sector, e.Fee
FROM Endorse e
JOIN Company c ON e.CompanyID = c.CompanyID
WHERE
    e.Fee = (SELECT 
            MAX(Fee)
        FROM
            Endorse);

-- Query 5 : Find the top-selling album in terms of revenue for each genre.
WITH RankedAlbum AS (
	SELECT 
		a.Genre, a.Name AS 'Album', s.Revenue,
		RANK() OVER (PARTITION BY a.Genre ORDER BY s.Revenue DESC) as AlbumRank
	FROM
		Album a,
		Stats s
	WHERE
		a.StatID = s.StatsID
	ORDER BY AlbumRank, s.Revenue DESC
)
SELECT Genre, Album, Revenue
FROM RankedAlbum
WHERE AlbumRank = 1;

-- Query 6 : Find the total investment made in concerts for each genre of music.
SELECT sg.Specialty, SUM(s.Investment) AS TotalInvestment
FROM Concert c
JOIN OrganizeConcert oc ON c.ConcertID = oc.ConcertID
JOIN Singer sg ON oc.ArtistID = sg.ArtistID
JOIN Stats s ON c.StatsID = s.StatsID
GROUP BY sg.Specialty
ORDER BY TotalInvestment DESC;

-- Query 7 : Find the average age of artists represented by each agency.
SELECT a.AgencyID, a.Name AS AgencyName, AVG(t.Age) AS AverageAge
FROM Talent t
JOIN Agency a ON t.AgencyID = a.AgencyID
GROUP BY a.AgencyID, AgencyName
ORDER BY AverageAge;



# Extra Queries
-- Query 8 : Retrieve the names of artists who have not endorsed any company.
SELECT FirstName, LastName
FROM Talent
WHERE ArtistID NOT IN (SELECT ArtistID FROM Endorse);

-- Query 9 : Retrieve name, age and AwardYear of artists who have won awards for their albums or movies.
SELECT
    t.FirstName, t.LastName, t.Age, r.Year AS AwardYear,
    CASE WHEN prod.Identifier LIKE 'A%' THEN 'Album'
		ELSE 'Movie'
	END AS Category
FROM
    Talent t
		JOIN
    (	SELECT Identifier, ArtistID
		FROM AlbumProduction
        UNION
		SELECT Identifier, ArtistID
		FROM MovieProduction
	) prod ON t.ArtistID = prod.ArtistID
        INNER JOIN
    Recipient r ON prod.Identifier = r.Identifier;

-- Query 10 : Find the movies with the highest ratings in each genre.
SELECT 
    m.Genre, m.Title, m.Rating, s.Revenue,
    (	SELECT MAX(s2.Revenue)
		FROM Movie m2
		JOIN Stats s2 ON m2.StatID = s2.statsID
        WHERE m.Genre = m2.Genre
        GROUP BY Genre
	) AS GenreHigh
FROM
    Movie m
        JOIN
    Stats s ON m.StatID = s.statsID
WHERE (Genre , Rating) IN 
	(	SELECT Genre, MAX(Rating)
        FROM Movie
        GROUP BY Genre
	)
ORDER BY m.Rating DESC;

-- Query 11 : Identify the agency that has organized the most concerts in the past year (2023).
SELECT oc.AgencyID, a.Name, COUNT(oc.ConcertID) AS ConcertCount
FROM OrganizeConcert oc
JOIN Concert c ON oc.ConcertID = c.ConcertID
JOIN Agency a ON oc.AgencyID = a.AgencyID
WHERE YEAR(c.Date) = YEAR(CURRENT_DATE - INTERVAL 1 YEAR)
GROUP BY oc.AgencyID, a.Name
ORDER BY ConcertCount DESC;

-- Query 12 : Find the Net Worth of artists based on the last 5 years and which agency they belong to.
WITH artistIncome (ArtistID, Income) AS (
	SELECT t.artistid, COALESCE(a.Fee, 0)
	FROM talent t
	LEFT JOIN act a ON a.artistid=t.artistid
    
	UNION ALL
	SELECT t.artistid, COALESCE(s.NetProfit, 0)
	FROM talent t
	LEFT JOIN album a ON a.artistid=t.artistid
	LEFT JOIN Stats s ON a.StatID = s.StatsID
    
    UNION ALL
    SELECT t.artistid, COALESCE(e.Fee, 0)
	FROM talent t
	LEFT JOIN endorse e ON e.artistid=t.artistid
)
SELECT ArtistID, SUM(Income) AS netIncome FROM artistIncome
GROUP BY ArtistID
ORDER BY netIncome DESC;
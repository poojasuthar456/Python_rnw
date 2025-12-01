CREATE DATABASE SkyRoutesDB;
USE SkyRoutesDB;

CREATE TABLE AirlineRoutesData (
    FlightID          VARCHAR(10),
    RouteCode         VARCHAR(15),
    Origin            VARCHAR(10),
    Destination       VARCHAR(10),
    FlightDate        VARCHAR(10),  -- Changed to text
    FlightDurationMins INT,
    AircraftType      VARCHAR(20),
    SeatsAvailable    INT,
    SeatsSold         INT,
    Revenue           INT,
    OperationalCost   INT,
    Profit            INT
);
SELECT COUNT(*) FROM AirlineRoutesData;  -- Should be 1000
SELECT MIN(FlightID), MAX(FlightID) FROM AirlineRoutesData;
SELECT 
    COUNT(*) AS TotalRows,
    COUNT(DISTINCT RouteCode) AS UniqueRoutes,
    COUNT(DISTINCT AircraftType) AS UniqueAircraft,
    MIN(FlightDate) AS StartDate,
    MAX(FlightDate) AS EndDate,
    ROUND(AVG(SeatsSold*1.0/SeatsAvailable)*100,1) AS AvgOccupancyPct,
    SUM(Revenue)/1000000 AS TotalRevenue_Millions,
    SUM(Profit)/1000000 AS TotalProfit_Millions
FROM AirlineRoutesData;


-- 1. TOP 10 MOST FREQUENT ROUTES
SELECT RouteCode, COUNT(*) AS Flights
FROM AirlineRoutesData 
GROUP BY RouteCode 
ORDER BY Flights DESC 
LIMIT 10;


-- 2. Average revenue, cost, and profit per route
-- 2. AVERAGE PROFIT PER ROUTE
SELECT RouteCode, 
	AVG(Revenue) AS AvgRevenue,
    AVG(OperationalCost) AS AvgCost,
    AVG(Profit) AS AvgProfit
FROM AirlineRoutesData 
GROUP BY RouteCode 
ORDER BY AvgProfit DESC;


-- 3. Underperforming routes (negative average profit)
-- 3. LOSS-MAKING ROUTES (negative profit)
SELECT RouteCode, AVG(Profit) AS AvgProfit
FROM AirlineRoutesData 
GROUP BY RouteCode 
HAVING AVG(Profit) < 0
ORDER BY AvgProfit;


-- 4. Seat occupancy % for each route
-- 4. OCCUPANCY % PER ROUTE
SELECT RouteCode, 
       SUM(SeatsSold)*100 / SUM(SeatsAvailable) AS OccupancyPct
FROM AirlineRoutesData 
GROUP BY RouteCode 
ORDER BY OccupancyPct DESC;


-- 5. Monthly trend of profit per route (sample for top routes)
-- 5. MONTHLY PROFIT (simple version)
SELECT DATE_FORMAT(FlightDate, '%Y-%m') AS Month, 
       SUM(Profit) AS TotalProfit
FROM AirlineRoutesData 
GROUP BY Month 
ORDER BY Month;


-- 6. Domestic vs International profitability
SELECT 
    CASE 
        WHEN Origin IN ('BOM','DEL','BLR','CCU','HYD') AND Destination IN ('BOM','DEL','BLR','CCU','HYD')
        THEN 'Domestic'
        ELSE 'International'
    END AS RouteType,
    COUNT(*) AS FlightCount,
    ROUND(SUM(Revenue)/1000000,1) AS TotalRevenue_Mn,
    ROUND(SUM(Profit)/1000000,1) AS TotalProfit_Mn,
    ROUND(AVG(Profit),0) AS AvgProfitPerFlight
FROM AirlineRoutesData
GROUP BY RouteType;

-- 7. Rank routes by revenue per minute of flight duration
-- 7. REVENUE PER MINUTE (top 5)
SELECT RouteCode, SUM(Revenue)/SUM(FlightDurationMins) AS RevPerMin
FROM AirlineRoutesData 
GROUP BY RouteCode 
ORDER BY RevPerMin DESC 
LIMIT 5;





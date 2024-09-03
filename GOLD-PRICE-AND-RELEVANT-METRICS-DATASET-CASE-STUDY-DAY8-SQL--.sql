-- USE GOLD

-- DATA TYPE OF DATE COLUMN CONVERTING INTO DATE COLUMN.

SELECT STR_TO_DATE(`ï»¿Date`, '%m/%d/%Y') AS clean_date FROM gold_price;

-- MAKING PERMANENT CHANGES

UPDATE gold_price
SET `ï»¿Date` = STR_TO_DATE(`ï»¿Date`, '%m/%d/%Y');

-- Retrieve the First 10 Rows

SELECT * FROM gold_price;

-- Count the Total Number of Records in the Dataset

SELECT COUNT(*) FROM gold_price;

-- List All Unique Dates Available in the Dataset

SELECT DISTINCT(`ï»¿Date`) FROM gold_price;

-- Find the Earliest and Latest Dates in the Dataset

SELECT MIN(`ï»¿Date`) AS EARLIEST,MAX(`ï»¿Date`) AS LATEST FROM gold_price;

-- Get the Gold Price on a Specific Date (e.g., '2022-01-01')

SELECT * FROM gold_price
WHERE `ï»¿Date` = '1/1/24';

-- Calculate the Average Gold Price

SELECT AVG(`Price Today`) FROM gold_price;

-- Find the Maximum and Minimum Gold Price

SELECT MAX(`Price Today`) AS maximum, MIN(`Price Today`) AS minimum FROM gold_price;

-- Calculate the Total Gold Price Across All Dates

SELECT SUM(`Price Today`) FROM gold_price;

-- Find the Average Gold Price by Year

SELECT YEAR(`ï»¿Date`),COUNT(*),AVG(`Price Today`) FROM gold_price
GROUP BY YEAR(`ï»¿Date`);

-- Get the Standard Deviation of the Gold Price

SELECT STDDEV(`Price Today`) FROM gold_price;


-- Retrieve Data Where Gold Price is Above $2,000

SELECT COUNT(*) FROM gold_price
WHERE `Price Today`>2000;

-- Find the Dates Where Gold Price Was Below $1,000

SELECT `ï»¿Date` FROM gold_price
WHERE `Price Today`<1000;

-- Get the Gold Price for a Specific Range of Dates (e.g., between '2020-01-01' and '2020-12-31')

SELECT * FROM gold_price
WHERE `ï»¿Date` BETWEEN '2023-01-01' AND '2024-12-31';

-- Retrieve Records Where Gold Price Increased Day Over Day

SELECT `ï»¿Date`,`Price Today` FROM gold_price
WHERE `Price Today` >LAG(`Price Today`) OVER (ORDER BY `ï»¿Date`);

-- Calculate the Daily Change in Gold Price

SELECT `Price Today` - `Price 1 Day Prior` AS price_change FROM gold_price;

-- Find the Maximum Price Change Tomorrow

SELECT  MAX(`Price Change Tomorrow`) FROM gold_price;

-- Calculate the Cumulative Sum of Gold Prices

SELECT `ï»¿Date`,SUM(`Price Today`) OVER(ORDER BY `ï»¿Date`) AS cum_sum FROM gold_price ;

-- Get the Average Gold Price by Month

SELECT MONTH(`ï»¿Date`) AS Mon,AVG(`Price Today`) FROM gold_price
GROUP BY MONTH(`ï»¿Date`)
ORDER BY Mon DESC;

-- Calculate the Monthly Average Inflation Rate

SELECT MONTH(`ï»¿Date`) AS Mon,AVG(`Monthly Inflation Rate`) FROM gold_price
GROUP BY MONTH(`ï»¿Date`)
ORDER BY Mon DESC;

-- Get the Highest 20-Day Moving Average

SELECT MAX(`Twenty Moving Average`) FROM gold_price;

-- Find the Date When Gold Price Reached Its Maximum

SELECT `ï»¿Date` FROM gold_price
ORDER BY `Price Today` DESC
LIMIT 1;

-- Calculate the Average VIX Index Value

SELECT AVG(VIX) FROM gold_price;

-- Find the Average Gold Price During High Inflation Periods (Inflation > 5%)

SELECT AVG(`Price Today`) FROM gold_price
WHERE `Monthly Inflation Rate` > 5;

-- Compare Gold Prices and Crude Oil Prices on the Same Dates

SELECT `ï»¿Date`,`Price Today`,`Crude` FROM gold_price;

-- Calculate the Correlation Between Gold Prices and Crude Oil Prices

SELECT CORR("Price Today", Crude) AS correlation FROM gold_price;

--  Find the Average Gold Price When the S&P 500 Opened Above 5000

SELECT AVG(`Price Today`) FROM gold_price
WHERE `SP Open` > 5000;

-- Get the Gold Price and Treasury Yield Curve Rate (10 Yr)

SELECT `Price Today`,`Treasury Par Yield Curve Rates (10 Yr)` FROM gold_price;

-- Rank the Dates by Gold Price in Descending Order

SELECT `ï»¿Date`,`Price Today`,RANK() OVER(ORDER BY `ï»¿Date` DESC) FROM gold_price;

-- Calculate the 7-Day Moving Average of Gold Prices

SELECT `ï»¿Date`,`Price Today`,AVG(`Price Today`) OVER(ORDER BY `ï»¿Date` ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_7d FROM gold_price;

-- Find the Longest Streak of Increasing Gold Prices

SELECT Date, "Price Today", 
       COUNT(*) OVER (ORDER BY `ï»¿Date` ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW 
                      WHERE "Price Today" > LAG("Price Today") OVER (ORDER BY `ï»¿Date`)) AS increasing_streak
FROM gold_prices;


-- Identify the Days When the Gold Price Decreased by More Than 2%

SELECT `ï»¿Date`, "Price Today", 
       (("Price Today" - "Price 1 Day Prior") / "Price 1 Day Prior") * 100 AS price_change_pct
FROM gold_price
WHERE (("Price Today" - "Price 1 Day Prior") / "Price 1 Day Prior") * 100 < -2;

-- Compare the Performance of Gold Prices Against the DXY Index

SELECT `ï»¿Date`, "Price Today", DXY, 
       "Price Today" - LAG("Price Today") OVER (ORDER BY `ï»¿Date`) AS gold_price_change,
       DXY - LAG(DXY) OVER (ORDER BY `ï»¿Date`) AS dxy_change
FROM gold_price;

-- Find the Highest Trading Volume

SELECT MAX(Volume) FROM gold_price;

-- Get the Average Volume of Trading During Periods of High Volatility (VIX > 30)

SELECT AVG(Volume) FROM gold_price
WHERE VIX > 30;

-- Retrieve the Date and Gold Price When the Treasury Par Yield (10 Yr) Was Highest

SELECT `ï»¿Date`,`Price Today` FROM gold_price
WHERE `Treasury Par Yield Curve Rates (10 Yr)` =  (SELECT MAX(`Treasury Par Yield Curve Rates (10 Yr)`) FROM gold_price);

-- Calculate the Average Gold Price When Crude Oil Prices Were Above $75

SELECT AVG(`Price Today`) FROM gold_price
WHERE Crude > 75;

-- Find the Average Gold Price on Days When the EFFR Rate Was Above 5%

SELECT AVG(`Price Today`) FROM gold_Price
WHERE `EFFR Rate` > 5;







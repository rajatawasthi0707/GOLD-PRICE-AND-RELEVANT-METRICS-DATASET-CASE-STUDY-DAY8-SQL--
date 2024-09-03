# GOLD-PRICE-AND-RELEVANT-METRICS-DATASET-CASE-STUDY-DAY8-SQL--
GOLD-PRICE-AND-RELEVANT-METRICS-DATASET-CASE-STUDY-DAY8-SQL--
# Gold Price SQL Analysis

This repository contains SQL queries for analyzing gold prices and their relationship with various economic indicators. The analysis aims to extract valuable insights from the dataset, focusing on trends, statistics, and correlations.

## Table of Contents

- [Project Overview](#project-overview)
- [Data Description](#data-description)
- [SQL Queries](#sql-queries)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

The Gold Price SQL Analysis project involves a detailed examination of gold price data using SQL queries. The analysis includes data cleaning, statistical analysis, and comparisons with other economic indicators such as crude oil prices and the VIX index.

## Data Description

The dataset `gold_price` includes various columns such as date, price of gold, trading volume, VIX index, and other economic indicators.

## SQL Queries

```sql
-- Convert Date Column to Date Type
-- 1. Convert the date column to the correct format and make permanent changes.

-- Retrieve Initial Data
-- 2. Retrieve the first 10 rows.
-- 3. Count the total number of records.
-- 4. List all unique dates and find the earliest and latest dates.

-- Price Analysis
-- 5. Get gold price on a specific date.
-- 6. Calculate the average, maximum, and minimum gold prices.
-- 7. Compute the total and average gold price by year.
-- 8. Analyze gold price changes (daily, 7-day moving average, etc.).

-- Volatility and Inflation
-- 9. Retrieve data where gold price is above a certain threshold.
-- 10. Find dates where gold price was below $1,000.
-- 11. Get gold price for a specific range of dates.
-- 12. Retrieve records where gold price increased day over day.
-- 13. Calculate the daily change in gold price.
-- 14. Find the maximum price change tomorrow.
-- 15. Calculate the cumulative sum of gold prices.
-- 16. Get the average gold price by month.
-- 17. Calculate the monthly average inflation rate.

-- Moving Averages and Performance
-- 18. Get the highest 20-day moving average.
-- 19. Find the date when gold price reached its maximum.
-- 20. Calculate the average VIX index value.
-- 21. Find the average gold price during high inflation periods (inflation > 5%).
-- 22. Compare gold prices and crude oil prices on the same dates.
-- 23. Calculate the correlation between gold prices and crude oil prices.
-- 24. Find the average gold price when the S&P 500 opened above 5000.
-- 25. Get the gold price and 10-year treasury yield curve rate.
-- 26. Rank the dates by gold price in descending order.
-- 27. Calculate the 7-day moving average of gold prices.

-- Longest Streak and Performance Comparisons
-- 28. Find the longest streak of increasing gold prices.
-- 29. Identify the days when the gold price decreased by more than 2%.
-- 30. Compare the performance of gold prices against the DXY index.
-- 31. Find the highest trading volume.
-- 32. Get the average volume of trading during periods of high volatility (VIX > 30).
-- 33. Retrieve the date and gold price when the 10-year treasury yield was highest.
-- 34. Calculate the average gold price when crude oil prices were above $75.
-- 35. Find the average gold price on days when the EFFR rate was above 5%.

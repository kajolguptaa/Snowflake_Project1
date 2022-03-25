//Calculate the number of Orders those with Ship Mode as ‘Second Class’
SELECT COUNT(*), SHIP_MODE FROM superstore  WHERE SHIP_MODE= 'Second Class' GROUP BY SHIP_MODE;

//List down the most valuable customers Country wise
SELECT COUNTRY, CUSTOMER_NAME, COUNT(*) FROM SUPERSTORE GROUP BY COUNTRY, CUSTOMER_NAME ORDER BY COUNTRY, COUNT(*) DESC;

//Total Sales for Category ‘Furniture’
SELECT SUM(SALES) FROM SUPERSTORE WHERE CATEGORY = 'Furniture';

//Which Product provides the maximum profit
SELECT CATEGORY, SUM(PROFIT) FROM SUPERSTORE GROUP BY CATEGORY ORDER BY SUM(PROFIT) DESC;

//Calculate the total profit made by each product category country wise
SELECT COUNTRY,CATEGORY, SUM(PROFIT) FROM SUPERSTORE GROUP BY CATEGORY, COUNTRY ORDER BY COUNTRY;

//Which region of United States have majority loss?
SELECT REGION, MIN(PROFIT) FROM SUPERSTORE GROUP BY REGION;

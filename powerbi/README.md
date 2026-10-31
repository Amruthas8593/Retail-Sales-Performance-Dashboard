# Power BI implementation

## Import
Import `data/retail_sales_50000.csv`. The Power Query script in this folder sets the expected data types. Replace the sample file path with your local CSV path.

## Data model
Create a calendar table, mark it as the Date table, and relate Date[Date] one-to-many to Retail[Date].

Example calendar table (DAX):
```dax
Date = CALENDAR(MIN(Retail[Date]), MAX(Retail[Date]))
Year = YEAR('Date'[Date])
Month Number = MONTH('Date'[Date])
Month = FORMAT('Date'[Date], "MMM")
Year Month = FORMAT('Date'[Date], "YYYY-MM")
```
Sort Month by Month Number and Year Month by Date.

## Measures
Create the measures in `Retail_Measures.dax`. Profit margin is total profit divided by total revenue, not an average of row-level margins.

## Pages
1. **Overview:** Revenue, Profit, Units Sold, Transactions, monthly revenue and profit.
2. **Product & Category:** Revenue, profit, units sold and margin by product/category.
3. **Region & Channel:** Revenue, profit and transaction count by region and channel.

## Slicers
Date, region, category, product and channel.

## Validation
Reconcile total revenue, profit and units sold with the source CSV. Check that the date table filters all monthly visuals and that month labels sort chronologically.

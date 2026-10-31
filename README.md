# Retail Sales Performance

This project uses 50,000 retail transactions to compare sales and profit across products, categories, regions and channels.

## Questions
- Which products and categories contribute the most revenue and profit?
- Which regions and channels have stronger sales?
- How does profit margin differ between segments?
- How has revenue changed month to month?

## Data
The dataset contains date, region, category, product, channel, units sold, revenue and profit.

## Analysis
The notebook checks data quality, calculates overall sales measures, groups performance by region, category, product and channel, and calculates profit margin. It also reports monthly revenue and profit changes.

Revenue and profit are shown separately. A segment with high revenue may have a lower profit margin, so both measures should be considered.

## Files
- `data/` — retail transaction dataset
- `notebooks/retail_sales_performance.ipynb` — analysis
- `sql/retail_sales_analysis.sql` — PostgreSQL queries
- `dashboard/` — Power BI layout notes
- `images/` — chart and dashboard previews

## Run
From the repository root:

```bash
python -m pip install -r requirements.txt
jupyter notebook
```

Open `notebooks/retail_sales_performance.ipynb` and run the cells in order.

## Tools
Python, Pandas, Matplotlib, PostgreSQL and Power BI.

## Author
Amrutha S Panicker | MSc Data Analytics | BCA

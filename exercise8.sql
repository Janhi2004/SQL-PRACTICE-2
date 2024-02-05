SELECT manufacturer, 
count(drug) as drug_count,
ABS(SUM(cogs - total_sales)) as  total_amount_losses
FROM pharmacy_sales
where total_sales < cogs
group by manufacturer
order by total_amount_losses desc

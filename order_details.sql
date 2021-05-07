-- Struktur tabel
select 
	*
from sandbox.learning.order_lists_csv olc 

select *
from sandbox.learning.order_details_csv odc 

select 
	distinct 
	odc.category,
	odc.sub_category,
	sum(odc.quantity) as total_quantity_sold,
	count(odc.order_id) as total_order,
	avg(odc.total_cost) as avg_total_cost,
	sum(odc.sales) as total_sales,
	sum(odc.total_profit) as total_profit
from sandbox.learning.order_details_csv odc 
group by 1,2

select 
	*
from sandbox.learning.order_details_csv odc 

-- No.1 (3 parameters)
select
	sub_category,
	sum(sales) as sales_sub_category,
	sum(odc."Cost") as cost_sub_category,
	sum(odc.profit) as profit_sub_category 
from learning.order_details_csv odc
group by 1
order by 2,3,4 
limit 5

-- No.2 (improve sales)
select
	sub_category,
	sum(sales) as sales_sub_category
from learning.order_details_csv odc
group by 1
order by 2 asc 
limit 5

-- No.3 (improve orders)
select
	sub_category,
	count(odc.order_id) as total_order
from learning.order_details_csv odc
group by 1
order by 2 asc 
limit 5


select * from sandbox.learning.order_details_csv odc 
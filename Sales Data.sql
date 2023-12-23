
select *
from sales.supermarket_sales;
--Results

select *
from sales.supermarket_sales
where Branch = 'A';
--Results
select *
from sales.supermarket_sales
where Branch = 'B';
--Results
select *
from sales.supermarket_sales
where Branch = 'C';

-- Questions that will be analyzed and answered
# Which gender offers the highest sales? 
# Which product_line gave the highest and lowest amount of cogs and gross_income?
# What branch offered the most product_line?
# Which date offers highest product_line 
# Which product offers the highest rating and which product has the highest avg rating?

# Which gender offers the highest sales? 
select gender,product_line,round((unit_price) * (quantity),2) as total_sales
from sales.supermarket_sales 
group by gender,product_line
order by total_sales desc;
--Results

# Which product_line gave the highest and lowest amount of cogs and gross_income?
select product_line,max(cogs) as max_cogs,min(cogs) as min_cogs
from sales.supermarket_sales
group by product_line 
order by max_cogs desc,min_cogs;
--Results

# What branch offered the most product_line?
select branch,count(product_line) as amount_product_line
from sales.supermarket_sales
group by branch
order by amount_product_line desc;

select branch,Product_line,count(product_line) as product_line_per_branch
from sales.supermarket_sales
group by product_line
order by product_line_per_branch desc;

select product_line,count(product_line) as product_line_branchA
from sales.supermarket_sales
where branch = 'A'
group by product_line;

select product_line,count(product_line) as product_line_branchA
from sales.supermarket_sales
where branch = 'B'
group by product_line
order by product_line_branchA desc;

select product_line,count(product_line) as product_line_branchA
from sales.supermarket_sales
where branch = 'C'
group by product_line;
-- Results

# Which date offers highest product_line?

select product_line,date,count(date) as sales_amount_date
from sales.supermarket_sales
group by date
order by sales_amount_date desc;
--Results


# Which product offers the highest rating and which product has the highest avg rating?
select product_line,max(rating) as highest_rating
from sales.supermarket_sales
group by Product_line
order by rating desc;
--Results



select count(rating) as rating_amount,product_line
from sales.supermarket_sales
group by product_line
order by rating_amount desc;
--Results


select product_line,round(avg(rating),2) as avg_rating
from sales.supermarket_sales
group by product_line
order by avg_rating desc;

--Results

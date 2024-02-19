-- Which college team had the most drafts picks over the past 5 drafts
with cte as (
select College,count(*) as amount_college_22
from nfldraft.nfldraft2022
group by college
order by amount_college_22 desc),
cte2 as
(select College,count(*) as amount_college_23
from nfldraft.nfldraft2023
group by college
order by amount_college_23 desc),
cte3 as (select College,count(*) as amount_college_21
from nfldraft.nfldraft2021
group by college
order by amount_college_21 desc),
cte4 as (
select College,count(*) as amount_college_20
from nfldraft.nfldraft2020
group by college
order by amount_college_20 desc),
cte5 as (
select College,count(*) as amount_college_19
from nfldraft.nfldraft2019
group by college
order by amount_college_19 desc)
select c.college,(amount_college_22 + amount_college_23+amount_college_21+amount_college_20+amount_college_19) as total
from nfldraft2023 as nfl23 inner join cte as c 
on nfl23.college = c.college
inner join cte2 as c2 
on c2.college = c.college
inner join cte3 as c3
on c3.College = c2.College
inner join cte4 as c4 
on c4.College = c3.College
inner join cte5 as c5
on c5.College = c4.College
group by c.college
order by total desc;


select College,count(*) as amount_college_23
from nfldraft.nfldraft2023
group by College
order by amount_college_23 desc;
select College,count(*) as amount_college_22
from nfldraft.nfldraft2022
group by College
order by amount_college_22 desc;
select College,count(*) as amount_college_21
from nfldraft.nfldraft2021
group by College
order by amount_college_21 desc;
select College,count(*) as amount_college_20
from nfldraft.nfldraft2020
group by College
order by amount_college_20 desc;
select College,count(*) as amount_college_19
from nfldraft.nfldraft2019
group by College
order by amount_college_19 desc;

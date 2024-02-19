-- See which side of the ball has more draft picks (Offense or Defense or Special Teams)
-- 2023
select 
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,count(*) as amount_per_seperation
from nfldraft2023
group by Position_Seperation
order by amount_per_seperation desc;
-- 2022
select 
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,count(*) as amount_per_seperation
from nfldraft2022
group by Position_Seperation
order by amount_per_seperation desc;
-- 2021
select 
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,count(*) as amount_per_seperation
from nfldraft2021
group by Position_Seperation
order by amount_per_seperation desc;

select 
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,count(*) as amount_per_seperation
from nfldraft2020
group by Position_Seperation
order by amount_per_seperation desc;

select 
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,count(*) as amount_per_seperation
from nfldraft2019
group by Position_Seperation
order by amount_per_seperation desc;

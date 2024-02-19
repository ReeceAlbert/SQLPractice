-- Lets focus on the other conf
-- 2023
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2023
where `Conf.` not in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2022
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2022
where `Conf.` not in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2021
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2021
where `Conf.` not in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2020
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2020
where `Conf.` not in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2019
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2019
where `Conf.` not in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
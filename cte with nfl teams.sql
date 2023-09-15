with cte as (
select `NFL team`,count(*) as amount_team_22
from nfldraft.nfldraft2022
group by `NFL team`
order by amount_team_22 desc),
cte2 as
(select `NFL team`,count(*) as amount_team_23
from nfldraft.nfldraft2023
group by `NFL team`
order by amount_team_23 desc),
cte3 as 
(select `NFL team`,count(*) as amount_team_21
from nfldraft.nfldraft2021
group by `NFL team`
order by amount_team_21 desc),
cte4 as (
select `NFL team`,count(*) as amount_team_20
from nfldraft.nfldraft2020
group by `NFL team`
order by amount_team_20 desc),
cte5 as (
select `NFL team`,count(*) as amount_team_19
from nfldraft.nfldraft2019
group by `NFL team`
order by amount_team_19 desc)
select c.`NFL team`,(amount_team_22 + amount_team_23+amount_team_21+amount_team_20+amount_team_19) as total
from nfldraft2023 as nfl23 inner join cte as c 
on nfl23.`NFL team` = c.`NFL team`
inner join cte2 as c2 
on c2.`NFL team` = c.`NFL team`
inner join cte3 as c3
on c3.`NFL team` = c2.`NFL team`
inner join cte4 as c4 
on c4.`NFL team` = c3.`NFL team`
inner join cte5 as c5
on c5.`NFL team` = c4.`NFL team`
group by c.`NFL team`
order by total desc;



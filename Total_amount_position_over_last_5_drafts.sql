-- Total amount for each position over the past 5 drafts
with cte as (
select `Pos.`,count(*) as amount_pos_22
from nfldraft.nfldraft2022
group by `Pos.`
order by amount_pos_22 desc),
cte2 as
(select `Pos.`,count(*) as amount_pos_23
from nfldraft.nfldraft2023
group by `Pos.`
order by amount_pos_23 desc),
cte3 as (
select `Pos.`,count(*) as amount_pos_21
from nfldraft.nfldraft2021
group by `Pos.`
order by amount_pos_21 desc),
cte4 as (
select `Pos.`,count(*) as amount_pos_20
from nfldraft.nfldraft2020
group by `Pos.`
order by amount_pos_20 desc),
cte5 as (
select `Pos.`,count(*) as amount_pos_19
from nfldraft.nfldraft2019
group by `Pos.`
order by amount_pos_19 desc)
select c.`Pos.`,(amount_pos_22 + amount_pos_23+amount_pos_21+amount_pos_20+amount_pos_19) as total
from nfldraft2023 as nfl23 inner join cte as c 
on nfl23.`Pos.` = c.`Pos.`
inner join cte2 as c2 
on c2.`Pos.` = c.`Pos.`
inner join cte3 as c3
on c3.`Pos.` = c2.`Pos.`
inner join cte4 as c4 
on c4.`Pos.` = c3.`Pos.`
inner join cte5 as c5
on c5.`Pos.` = c4.`Pos.`
group by c.`Pos.`
order by total desc;
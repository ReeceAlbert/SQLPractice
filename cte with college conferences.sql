with cte as (
select `Conf.`,count(*) as amount_conf_22
from nfldraft.nfldraft2022
group by `Conf.`
order by amount_conf_22 desc),
cte2 as
(select `Conf.`,count(*) as amount_conf_23
from nfldraft.nfldraft2023
group by `Conf.`
order by amount_conf_23 desc),
cte3 as (
select `Conf.`,count(*) as amount_conf_21
from nfldraft.nfldraft2021
group by `Conf.`
order by amount_conf_21 desc),
cte4 as (
select `Conf.`,count(*) as amount_conf_20
from nfldraft.nfldraft2020
group by `Conf.`
order by amount_conf_20 desc),
cte5 as (
select `Conf.`,count(*) as amount_conf_19
from nfldraft.nfldraft2019
group by `Conf.`
order by amount_conf_19 desc)
select c.`Conf.`,(amount_conf_22 + amount_conf_23+amount_conf_21+amount_conf_20+amount_conf_19) as total
from nfldraft2023 as nfl23 inner join cte as c 
on nfl23.`Conf.` = c.`Conf.`
inner join cte2 as c2 
on c2.`Conf.` = c.`Conf.`
inner join cte3 as c3
on c3.`Conf.` = c2.`Conf.`
inner join cte4 as c4 
on c4.`Conf.` = c3.`Conf.`
inner join cte5 as c5
on c5.`Conf.` = c4.`Conf.`
group by c.`Conf.`
order by total desc;
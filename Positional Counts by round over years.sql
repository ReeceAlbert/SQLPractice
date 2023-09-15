-- This shows which position is geared towards the first round over the past 5 drafts
select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 1
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 1
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 1
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 1
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 1
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;



-- lets do this for the next rounds 
select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 2
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 2
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 2
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 2
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 2
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;


-- Round 3
select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 3
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 3
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 3
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 3
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 3
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;



-- Round 4
select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 4
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 4
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 4
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 4
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 4
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;


-- Round 5

select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 5
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 5
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 5
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 5
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 5
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;


-- Round 6

select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 6
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 6
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 6
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 6
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 6
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;


-- Round 7 
select `Pos.`,
sum(count_2022 + count_2023) as total
from (
select `Pos.`,count(*) as count_2022, 0 as count_2023
from nfldraft2022
where `ï»¿Round` = 7
group by `Pos.`
union all
select `Pos.`,count(*) as count_2023, 0 as count_2023
from nfldraft2023
where `ï»¿Rnd.` = 7
group by `Pos.`
union all
select `Pos.`,count(*) as count_2021, 0 as count_2021
from nfldraft2021
where `ï»¿Rnd.` = 7
group by `Pos.`
union all
select `Pos.`,count(*) as count_2020, 0 as count_2020
from nfldraft2020
where `ï»¿Rnd.` = 7
group by `Pos.`
union all
select `Pos.`,count(*) as count_2019, 0 as count_2019
from nfldraft2019
where `ï»¿Rnd.` = 7
group by `Pos.`
) as combined_data
group by `Pos.`
order by total desc;




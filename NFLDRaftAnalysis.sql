select *
from nfldraft.nfldraft2023;
-- count the different teams amount of draft picks
select `NFL team`,count(`NFL team`) as amount_teams
from nfldraft.nfldraft2023
group by `NFL team`
order by amount_teams desc;
select `Pos.`,count(`Pos.`) as amount_teams_pos
from nfldraft.nfldraft2023
group by `Pos.`
order by amount_teams_pos desc;
select College,count(College) as amount_college
from nfldraft.nfldraft2023
group by College
order by amount_college desc;
select `Conf.`,count(`Conf.`) as amount_conf
from nfldraft.nfldraft2023
group by `Conf.`
order by amount_conf desc;

select *
from nfldraft.nfldraft2023
where notes like 'f%';
-- 58% of teams got picks from another team
-- Can we find out which teams gave out the most
-- first lets focus on one team
    
select *
from nfldraft2019;
select *
from nfldraft2020;
select *
from nfldraft2021;
select *
from nfldraft2022;
select *
from nfldraft2023;
-- how would I create a quere that shows which teams has the most players drafted into the NFL

select College,count(*) as amount_college_23
from nfldraft.nfldraft2023
group by College
order by amount_college_23 desc;

select College,count(*) as amount_college_22
from nfldraft.nfldraft2022
group by College
order by amount_college_22 desc;




-- SEC Change from year to year
select `NFL team`,Player,College
from nfldraft.nfldraft2019
where college in (
select college 
from nfldraft.nfldraft2019
where `Conf.` = 'SEC'
);
select `NFL team`,Player,College
from nfldraft.nfldraft2020
where college in (
select college 
from nfldraft.nfldraft2019
where `Conf.` = 'SEC'
);
select `NFL team`,Player,College
from nfldraft.nfldraft2021
where college in (
select college 
from nfldraft.nfldraft2019
where `Conf.` = 'SEC'
);
select `NFL team`,Player,College
from nfldraft.nfldraft2022
where college in (
select college 
from nfldraft.nfldraft2019
where `Conf.` = 'SEC'
);
select `NFL team`,Player,College
from nfldraft.nfldraft2023
where college in (
select college 
from nfldraft.nfldraft2019
where `Conf.` = 'SEC'
);
-- See what percetage of players from Power 5 Conf. drafted 
select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2019;
select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2020;
select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2021;
select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2022;
select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2023;
-- See what what pconf has the highest % of 1st rounders 
-- lets foucs on the previous draft

select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC')/count(*),2) as total_pecrcentage_sec_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC')/count(*),2) as total_pecrcentage_acc_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten')/count(*),2) as total_pecrcentage_bigten_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12')/count(*),2) as total_pecrcentage_big12_player,
round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12')/count(*),2) as total_pecrcentage_pac12_player
from nfldraft.nfldraft2023;

select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_sec_player_round_1,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_acc_player_round_1,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_bigten_player_round_1,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_big12_player_round_1,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_pac12_player_round_1
from nfldraft.nfldraft2023;

select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_sec_player_round_2,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_acc_player_round_2,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_bigten_player_round_2,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_big12_player_round_2,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_pac12_player_round_2
from nfldraft.nfldraft2023;

select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_sec_player_round_3,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_acc_player_round_3,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_bigten_player_round_3,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_big12_player_round_3,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_pac12_player_round_3
from nfldraft.nfldraft2023;
select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_sec_player_round_4,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_acc_player_round_4,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_bigten_player_round_4,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_big12_player_round_4,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_pac12_player_round_4
from nfldraft.nfldraft2023;
select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_sec_player_round_5,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_acc_player_round_5,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_bigten_player_round_5,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_big12_player_round_5,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_pac12_player_round_5
from nfldraft.nfldraft2023;
select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_sec_player_round_6,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_acc_player_round_6,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_bigten_player_round_6,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_big12_player_round_6,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_pac12_player_round_6
from nfldraft.nfldraft2023;
select round((select count(*) as sec_player from nfldraft.nfldraft2023 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_sec_player_round_7,
round((select count(*) as acc_player from nfldraft.nfldraft2023 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_acc_player_round_7,
round((select count(*) as bt_player from nfldraft.nfldraft2023 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_bigten_player_round_7,
round((select count(*) as b12_player from nfldraft.nfldraft2023 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_big12_player_round_7,
round((select count(*) as p12_player from nfldraft.nfldraft2023 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_pac12_player_round_7
from nfldraft.nfldraft2023;

-- 2019
select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_sec_player_round_1,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_acc_player_round_1,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_bigten_player_round_1,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_big12_player_round_1,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_pac12_player_round_1
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_sec_player_round_2,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_acc_player_round_2,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_bigten_player_round_2,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_big12_player_round_2,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_pac12_player_round_2
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_sec_player_round_3,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_acc_player_round_3,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_bigten_player_round_3,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_big12_player_round_3,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_pac12_player_round_3
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_sec_player_round_4,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_acc_player_round_4,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_bigten_player_round_4,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_big12_player_round_4,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_pac12_player_round_4
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_sec_player_round_5,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_acc_player_round_5,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_bigten_player_round_5,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_big12_player_round_5,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_pac12_player_round_5
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 16)/count(*),2) as total_pecrcentage_sec_player_round_6,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_acc_player_round_6,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_bigten_player_round_6,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_big12_player_round_6,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_pac12_player_round_6
from nfldraft.nfldraft2019;

select round((select count(*) as sec_player from nfldraft.nfldraft2019 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_sec_player_round_7,
round((select count(*) as acc_player from nfldraft.nfldraft2019 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_acc_player_round_7,
round((select count(*) as b10_player from nfldraft.nfldraft2019 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_bigten_player_round_7,
round((select count(*) as b12_player from nfldraft.nfldraft2019 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_big12_player_round_7,
round((select count(*) as p12_player from nfldraft.nfldraft2019 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_pac12_player_round_7
from nfldraft.nfldraft2019;

-- 2020 
select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_sec_player_round_1,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_acc_player_round_1,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_bigten_player_round_1,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_big12_player_round_1,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_pac12_player_round_1
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_sec_player_round_2,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_acc_player_round_2,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_bigten_player_round_2,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_big12_player_round_2,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_pac12_player_round_2
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_sec_player_round_3,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_acc_player_round_3,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_bigten_player_round_3,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_big12_player_round_3,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_pac12_player_round_3
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_sec_player_round_4,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_acc_player_round_4,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_bigten_player_round_4,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_big12_player_round_4,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_pac12_player_round_4
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_sec_player_round_5,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_acc_player_round_5,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_bigten_player_round_5,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_big12_player_round_5,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_pac12_player_round_5
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_sec_player_round_6,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_acc_player_round_6,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_bigten_player_round_6,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_big12_player_round_6,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_pac12_player_round_6
from nfldraft.nfldraft2020;

select round((select count(*) as sec_player from nfldraft.nfldraft2020 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_sec_player_round_7,
round((select count(*) as acc_player from nfldraft.nfldraft2020 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_acc_player_round_7,
round((select count(*) as b10_player from nfldraft.nfldraft2020 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_bigten_player_round_7,
round((select count(*) as b12_player from nfldraft.nfldraft2020 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_big12_player_round_7,
round((select count(*) as p12_player from nfldraft.nfldraft2020 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_pac12_player_round_7
from nfldraft.nfldraft2020;

-- -2021
select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_sec_player_round_1,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_acc_player_round_1,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_bigten_player_round_1,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_big12_player_round_1,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 1)/count(*),2) as total_pecrcentage_pac12_player_round_1
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_sec_player_round_2,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_acc_player_round_2,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_bigten_player_round_2,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_big12_player_round_2,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 2)/count(*),2) as total_pecrcentage_pac12_player_round_2
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_sec_player_round_3,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_acc_player_round_3,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_bigten_player_round_3,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_big12_player_round_3,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 3)/count(*),2) as total_pecrcentage_pac12_player_round_3
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_sec_player_round_4,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_acc_player_round_4,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_bigten_player_round_4,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_big12_player_round_4,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 4)/count(*),2) as total_pecrcentage_pac12_player_round_4
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_sec_player_round_5,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_acc_player_round_5,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_bigten_player_round_5,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_big12_player_round_5,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 5)/count(*),2) as total_pecrcentage_pac12_player_round_5
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_sec_player_round_6,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_acc_player_round_6,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_bigten_player_round_6,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_big12_player_round_6,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 6)/count(*),2) as total_pecrcentage_pac12_player_round_6
from nfldraft.nfldraft2021;

select round((select count(*) as sec_player from nfldraft.nfldraft2021 where `Conf.` = 'SEC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_sec_player_round_7,
round((select count(*) as acc_player from nfldraft.nfldraft2021 where `Conf.` = 'ACC' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_acc_player_round_7,
round((select count(*) as b10_player from nfldraft.nfldraft2021 where `Conf.` = 'Big Ten' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_bigten_player_round_7,
round((select count(*) as b12_player from nfldraft.nfldraft2021 where `Conf.` = 'Big 12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_big12_player_round_7,
round((select count(*) as p12_player from nfldraft.nfldraft2021 where `Conf.` = 'Pac-12' and `ï»¿Rnd.` = 7)/count(*),2) as total_pecrcentage_pac12_player_round_7
from nfldraft.nfldraft2021;


-- 2022 
select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 1)/count(*),2) as total_pecrcentage_sec_player_round_1,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 1)/count(*),2) as total_pecrcentage_acc_player_round_1,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 1)/count(*),2) as total_pecrcentage_bigten_player_round_1,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 1)/count(*),2) as total_pecrcentage_big12_player_round_1,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 1)/count(*),2) as total_pecrcentage_pac12_player_round_1
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 2)/count(*),2) as total_pecrcentage_sec_player_round_2,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 2)/count(*),2) as total_pecrcentage_acc_player_round_2,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 2)/count(*),2) as total_pecrcentage_bigten_player_round_2,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 2)/count(*),2) as total_pecrcentage_big12_player_round_2,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 2)/count(*),2) as total_pecrcentage_pac12_player_round_2
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 3)/count(*),2) as total_pecrcentage_sec_player_round_3,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 3)/count(*),2) as total_pecrcentage_acc_player_round_3,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 3)/count(*),2) as total_pecrcentage_bigten_player_round_3,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 3)/count(*),2) as total_pecrcentage_big12_player_round_3,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 3)/count(*),2) as total_pecrcentage_pac12_player_round_3
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 4)/count(*),2) as total_pecrcentage_sec_player_round_4,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 4)/count(*),2) as total_pecrcentage_acc_player_round_4,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 4)/count(*),2) as total_pecrcentage_bigten_player_round_4,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 4)/count(*),2) as total_pecrcentage_big12_player_round_4,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 4)/count(*),2) as total_pecrcentage_pac12_player_round_4
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 5)/count(*),2) as total_pecrcentage_sec_player_round_5,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 5)/count(*),2) as total_pecrcentage_acc_player_round_5,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 5)/count(*),2) as total_pecrcentage_bigten_player_round_5,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 5)/count(*),2) as total_pecrcentage_big12_player_round_5,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 5)/count(*),2) as total_pecrcentage_pac12_player_round_5
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 6)/count(*),2) as total_pecrcentage_sec_player_round_6,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 6)/count(*),2) as total_pecrcentage_acc_player_round_6,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 6)/count(*),2) as total_pecrcentage_bigten_player_round_6,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 6)/count(*),2) as total_pecrcentage_big12_player_round_6,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 6)/count(*),2) as total_pecrcentage_pac12_player_round_6
from nfldraft.nfldraft2022;

select round((select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 7)/count(*),2) as total_pecrcentage_sec_player_round_7,
(select count(*) as sec_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 7) as count_players_numerical_sec,
round((select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 7)/count(*),2) as total_pecrcentage_acc_player_round_7,
(select count(*) as acc_player from nfldraft.nfldraft2022 where `Conf.` = 'ACC' and `ï»¿Round` = 7) as count_players_numerical_acc,
round((select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 7)/count(*),2) as total_pecrcentage_bigten_player_round_7,
(select count(*) as b10_player from nfldraft.nfldraft2022 where `Conf.` = 'Big Ten' and `ï»¿Round` = 7) as count_players_numerical_b10,
round((select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 7)/count(*),2) as total_pecrcentage_big12_player_round_7,
(select count(*) as b12_player from nfldraft.nfldraft2022 where `Conf.` = 'Big 12' and `ï»¿Round` = 7) as count_players_numerical_b12,
round((select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'Pac-12' and `ï»¿Round` = 7)/count(*),2) as total_pecrcentage_pac12_player_round_7,
(select count(*) as p12_player from nfldraft.nfldraft2022 where `Conf.` = 'SEC' and `ï»¿Round` = 7) as count_players_numerical_p12
from nfldraft.nfldraft2022;
-- this method allowed us to get a % of players drafted in the 7th round and count the number of picks 


-- lets try ti see whihc position has most draft picks per round
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 7
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 6
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 5
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 4
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 3
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 2
group by `Pos.`
order by count_pos desc;
select `Pos.`,count(*) as count_pos
from nfldraft.nfldraft2022
where `ï»¿Round` = 1
group by `Pos.`
order by count_pos desc;
-- Case Statements

select `Pos.`
from nfldraft2023
group by `Pos.`;

select `Pick No.`,`NFL team`,Player,`Pos.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation
from nfldraft2023;
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


-- Can we see which confrence offers the position_seperation (Power 5)
-- 2019 
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2019
where `Conf.` in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2020
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2020
where `Conf.` in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2021
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2021
where `Conf.` in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2022
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2022
where `Conf.` in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;
-- 2023
select `Conf.`,
case when `Pos.` in ('QB','OT','WR','TE','RB','FB','OG','C') then 'Offense'
when `Pos.` in ('LB','CB','DE','DT','OLB','S','NT','ILB') then 'Defense'
else 'Special Teams' end as Position_Seperation,
count(*) as amount_per_seperation
from nfldraft2023
where `Conf.` in ('SEC','ACC','Pac-12','Big 12','Big Ten')
group by Position_Seperation,`Conf.`
order by amount_per_seperation desc;

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

-- to make this even better, why not go look at the last 5 years of the nfl regular season roster
-- understand the difference in players and college 

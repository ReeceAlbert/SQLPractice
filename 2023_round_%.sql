-- 2020
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
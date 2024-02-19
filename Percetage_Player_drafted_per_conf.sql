-- Total % of players per Power 5 conference
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

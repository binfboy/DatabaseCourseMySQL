-- create table
use jrhoades_P2P2;
drop table if exists db_statistics;
CREATE TABLE `db_statistics` (
	`id` smallint(5) DEFAULT NULL AUTO_INCREMENT,
    `description` varchar(50),
    `value` int,
    `create_date` datetime NOT NULL,
   primary key (id)
);
-- insert data into table
insert into db_statistics (description, value, create_date)
values ('Number of Proteins', 16, NOW())
	,('Number of Genes', 16, NOW())
    ,('Number of Contributers', 2, NOW())
    ,('Number of Diseases', 5, NOW());
use jrhoades_P2P2;

DELIMITER $$
drop procedure if exists display_a_table$$
CREATE PROCEDURE display_a_table(in pAnything varchar(45))
begin
	/*
	test
    set @pAnything = 'select * from DO limit 10';
    select @pAnything;
    call display_a_table(@pAnything);
    */
    prepare stmt1 from @pAnything;
    EXECUTE stmt1;	
	DEALLOCATE PREPARE stmt1;
end
$$
DELIMITER ;



-- Inclass work

-- create insert and delete triggers
-- INSERT
drop trigger if exists _____;

delimiter $$
create trigger _____
	after insert on TABLE
    for each row
begin
	/*
    test
    */
    
		call STORED_PROCEDURE
	select count(*) into SESSION_VARIABLE from TABLE;
    update STATISTICS_TABLE
    set value = SESSION_VARIABLE
    where description = 'total number of customers';
End
$$
delimeter;

-- DELETE

drop trigger if exists _____;

delimiter $$
create trigger ____
	after delete on customer
    for each row
begin
	/*
    test
    */
		call STORED_PROCEDURE -- dosent work
	select count (*) into SESSION_VARIABLE from TABLE;
    update STATISTICS_TABLE
    set value = SESSION_VARIABLE
    where description = 'total number of customers';
end
$$
delimiter ;




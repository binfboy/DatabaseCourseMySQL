/* 3) Write an after insert and an after delete triggers and add them to your disease
table whose PK has one and only one column DO ID. Add a test section in each
trigger to show how each trigger is tested. Save these two triggers in the third
file.
*/
use jrhoades_P2P2;
SET SQL_SAFE_UPDATES = 0;
drop trigger if exists after_DO_insert;

delimiter $$
create trigger after_DO_insert
	after insert on DO
    for each row
begin
	/*   
    test
    insert into DO (DOID, Disease_Name, Definition, Relationship, schema_name, db_server_version, create_date, update_date)
    values (1234, 'TEST', 'TESTDEF', 'TESTRELATIONSHIP', 'TESTSCHEMA', 'TESTVERSION', now(), now());
    ;
	*/
	select count(*) into @NumberOfDiseases from DO;
    update db_statistics
    set value = @NumberofDiseases
    where description = 'total number of diseases';
end
$$ delimiter ;

  

drop trigger if exists after_DO_delete;

delimiter $$
create trigger after_DO_delete
	after delete on DO
	for each row
begin
	/*
    test
    delete from DO
    where DOID = 1234
    and Disease_Name = 'TEST'
    and Definition = 'TESTDEF'
    and Relationship = 'TESTRELATIONSHIP'
    and schema_name = 'TESTSCHEMA'
    and db_server_version = 'TESTVERSION';
	*/
	select count(*) into @NumberOfDiseases from DO;
    update db_statistics
    set value = @NumberofDiseases
    where description = 'total number of diseases';
end
$$ delimiter ;
MM/DD/YYY

%m/%d/%Y

, date_format(last_update, '%m/%d/%Y %h:%i:%s')

select create_date
	, date_format(create_date, '%m/%d/%Y')
from UniProt;


drop procedure if exists date_convert;
delimiter $$
create procedure date_convert(IN in_UniProtKB_Entry varchar(45))
begin
	/*
		call test('P02452');
		call test('O00459');
    */
	select date_format(create_date, '%m/%d/%Y')
    from UniProt
    limit 1;	

end
$$
delimiter ;

call date_convert('O00459');

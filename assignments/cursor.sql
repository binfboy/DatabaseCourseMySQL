use jrhoades_P2P2;

DELIMITER $$
drop procedure if exists cursor1$$

CREATE PROCEDURE cursor1(in pUniProtKB_Entry varchar(10))
begin
	/*
	
		test
        call cursor1(10);
        
    */
--  
	declare vfinished int default 0;
    declare vactor varchar(300) default '';
	declare all_names varchar(500) default '';
    declare Protein_Names varchar(300) default '';
    
	declare cursor1 cursor for
		select 	a.UniProtKB_Entry
			, concat(a.Protein_Name, ' ', b.Protein_Synonym) as AllNames
		from  UniProt a
		join  Protein_Synonym b
		on    a.UniProtKB_Entry = b.UniProtKB_Entry
		where a.UniProtKB_Entry = pUniProtKB_Entry;
        
	declare continue handler
		for not found set vfinished = 1;
        
	open cursor1;
	get_name: loop
		fetch cursor1 into Protein_Names, vactor;
		if vfinished = 1 then
		leave get_name;
		end if;
		
		set all_names = concat(vactor, ' ,', all_names);
	end loop get_name;
	
	close cursor1;
	
	select pUniProtKB_Entry, Protein_Names, all_names;
end
$$
DELIMITER ;
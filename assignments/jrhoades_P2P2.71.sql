
use jrhoades_P2P2;
drop procedure if exists spProtAvg;
DELIMITER $$
CREATE PROCEDURE spProtAvg()
begin
	/*
   The first stored procedure doesn’t need any input parameter. It will answer an
interesting question relevant to your data. Each record needs to include these
four columns: schema_name, db_server_version, create_date, and update_date.
Save this stored procedure as the first file.
    call spProtAvg;
    works fine
    
    
    call spProtAvg(null);
    Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.spProtAvg; expected 0, got 1
	call spProtAvg(1);
    Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.spProtAvg; expected 0, got 1

	*/
    select distinct  a.UniProtKB_entry
			, a.Protein_Name
            , b.Alternate_Protein_Names
            , a.Sequence_Length
            , a.Targeted_Disease
            , a.`Mass(Da)`
            , a.`Mass(Da)`/a.Sequence_Length as `Avg_Mass_Per_AA(Da/AA)`
            , 'jrhoades_P2P2' as schema_name
            , a.db_server_version
            , date_format(create_date, '%m/%d/%Y') as Created_Date
            , date_format(update_date, '%m/%d/%Y') as Update_Date
	from UniProt a
	join vw_p2p_joined b 
	on a.UniProtKB_Entry = b.UniProtKB_Entry
    group by `Avg_Mass_Per_AA(Da/AA)`;
	-- where a.UniProtKB_Entry = in_UniProtKB_Entry;

end
$$
delimiter ;
  
    

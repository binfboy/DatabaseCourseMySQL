
drop procedure if exists proteinIDsearch;
delimiter $$
create procedure proteinIDsearch(IN in_UniProtKB_Entry varchar(45))
begin
	/*
		It returns a row set of at least eight columns,three of them are
database name, MySQL version, and record creation date. The date
column in the output of a stored procedure should have US date
format as mm/dd/yyyy.
It takes one input parameter and generate a report about proteins
and diseases. One of the columns in the report will be a list of
protein synonyms. Two of the columns must be the protein Id and
its html link, where the html link comes from a function
HTMLLink().
iii. Do not add the SQL state
        
        
        
        
        call proteinIDsearch('P02452');
		call proteinIDsearch('O00459UniProt');
    */
	select distinct 'jrhoades_P2P2' as database_name
			, a.db_server_version
			, date_format(create_date, '%m/%d/%Y') as Created_Date
            , date_format(now(), '%m/%d/%Y') as Now_Date
            , a.UniProtKB_Entry
            , a.Protein_Name
		 	, b.Alternate_Protein_Names
            , HTMLLink(a.UniProtKB_Entry,a.`URL-UniProtKB_Entry`) as ProteinIDURL
	from UniProt a
	join vw_p2p_joined b 
	on a.UniProtKB_Entry = b.UniProtKB_Entry
	where a.UniProtKB_Entry = in_UniProtKB_Entry;
 
end
$$
delimiter ;

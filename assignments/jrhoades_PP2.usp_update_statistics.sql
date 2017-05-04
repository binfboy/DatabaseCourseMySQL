drop procedure if exists usp_update_statistics;
DELIMITER $$
CREATE PROCEDURE usp_update_statistics()
BEGIN
	/*
	 --  test
     truncate table db_statistics;
     select * from db_statistics;
	 call usp_update_statistics;
	 works fine
     
     call usp_update_statistics(null);
     Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.usp_update_statistics; expected 0, got 1

     call usp_update_statistics(1);
     Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.usp_update_statistics; expected 0, got 1

    */

	select count(*) into @NumberOfProteins from UniProt;
	select count(*) into @NumberOfGenes from HGNC;
	select count(*) into @NumberOfDiseases from DO;
	truncate table db_statistics;
    insert into db_statistics (id, description, value, create_date)
	values (1, 'total number of proteins', @NumberOfProteins, now())
			, (2, 'total number of genes', @NumberOfGenes, now())
			, (3, 'total number of diseases', @NumberOfDiseases, now())

	;
end
$$
delimiter ;




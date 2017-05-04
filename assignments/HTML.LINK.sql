use jrhoades_P2P2;
show tables;
describe UniProt;

select * from UniProt;

DELIMITER $$
drop function if exists HTMLLink$$
CREATE FUNCTION `HTMLLink` (ID varchar(10),URL varchar(100)) RETURNS varchar(300)
begin
	/*
      concatinate two inputs and some html tags to form a clickable html element on a webpage
    */
	declare Link varchar(300);
	select concat ('<a href=', '"', URL,'" target="_blank"><b>', ID, '</b></a>') into Link;
return Link;
End
$$
DELIMITER ;


--  use the new function HTMLLink() as it is
select  		
HTMLLink(
'C0278553'      --  first argument
, 'http://pir0.georgetown.edu/cgi-bin/entry_p2p.pl?cui=C0278553' --  second 
) as Link;

--  use it in a query with a table
select  UniProtKB_Entry
		, HTMLLink(UniProtKB_Entry, `URL-UniProtKB_Entry`)
from UniProt;

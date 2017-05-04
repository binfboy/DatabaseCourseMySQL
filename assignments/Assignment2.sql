

/* SECOND SP
I need two functions for this SP?
One function will format the date into MM/DD/YYYY.
The other creates HTML link.

Take one input parameter, protein ID, and generate a report.
Report contains protein synonyms, protein ID and html link.

The html link is the second function?  I used demo9/10 like you mentioned in lecture, I just had a hard time putting it all together.
Pretty confused about how to put it all together, using a stored procedure with other things inside of it
 to format date and create url links.
*/

use jrhoades_P2P2;
drop procedure if exists GetHtmlLinkPubMedIds;
delimiter $$
create procedure GetHtmlLinkPubMedIds(IN UniProtKB_Entry varchar(45))
begin
	/*
    test
    call GetHtmlLinkPubMedIds;
    --  call GetHtmlLinkPubMedIds('O00459');
    */
	select b.UniProtKB_Entry,
        b.Protein_Name,
        HtmlLink(a.UniProtKB_Entry, a.URL-UniProtKB_Entry as ProteinIdURL
        
	from UniProt a
    join vw_p2p_joined  b
    on   a.UniProtKB_Entry = b.UniProtKB_Entry;
    --  where a.UniProtKB_Entry = UniProtKB_Entry;
end
$$
delimiter ;



/* this above doesnt have all the other required parts, or work correctly.  
 I added the other required parts  below but it is just really a mess.
 Pretty confused about how to put it all together, using a stored procedure with other things inside of it
 to format date and create url links.
*/

use jrhoades_P2P2;
drop procedure if exists GetHtmlLinkPubMedIds_all_requirements;
delimiter $$
create procedure GetHtmlLinkPubMedIds_all_requirements(IN UniProtKB_Entry varchar(45))
begin
	/*
    test
    call GetHtmlLinkPubMedIds_all_requirements;
    --  call GetHtmlLinkPubMedIds_all_requirements('O00459');
    */
	select 
		'jrhoades_P2P2', -- need to put in database name
		version(), -- database version
		now(), -- date, I know this isnt properly formated how the assignment asks
		b.UniProtKB_Entry,
        b.Protein_Name,
        b.URL-UniProtKB_Entry as ProteinIdURL
        b.Sequence_Length,
        b.Alternate_Protein_Names,
        b.HGNC_ID,
        b.Approved_Symbol,
        b.Chromosomal_Location,
        b.Phenotype_MIN_Number,
        b.DOID,
        b.Disease_Name,
	from UniProt a
    join vw_p2p_joined  b
    on   a.UniProtKB_Entry = b.UniProtKB_Entry;
    --  where a.UniProtKB_Entry = UniProtKB_Entry;
end
$$
delimiter ;

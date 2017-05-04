SET SQL_SAFE_UPDATES = 0;


-- TABLE DO
UPDATE DO a
set a.db_server_version = version()
where DOID is not null
and Disease_Name is not null;

UPDATE DO a
set a.create_date = '2016-11-07 13:37:00'
where DOID is not null
and Disease_Name is not null;


UPDATE DO a
set a.update_date = now()
where DOID is not null
and Disease_Name is not null;

UPDATE DO a
set a.schema_name = 'jrhoades_P2P2'
where DOID is not null
and Disease_Name is not null;

-- TABLE Gene_Synonym
UPDATE Gene_Synonym a
set a.db_server_version = version()
where HGNC_ID is not null
and Synonym is not null;

UPDATE Gene_Synonym a
set a.create_date = '2016-11-07 13:37:00'
where HGNC_ID is not null
and Synonym is not null;

UPDATE Gene_Synonym a
set a.update_date = now()
where HGNC_ID is not null
and Synonym is not null;

UPDATE Gene_Synonym a
set a.schema_name = 'jrhoades_P2P2'
where HGNC_ID is not null
and Synonym is not null;

-- TABLE HGNC
UPDATE HGNC a
set a.db_server_version = version()
where HGNC_ID is not null;

UPDATE HGNC a
set a.create_date = '2016-11-07 13:37:00'
where HGNC_ID is not null;

UPDATE HGNC a
set a.update_date = now()
where HGNC_ID is not null;

UPDATE HGNC a
set a.schema_name = 'jrhoades_P2P2'
where HGNC_ID is not null;

-- TABLE MIN

UPDATE MIN a
set a.db_server_version = version()
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN a
set a.create_date = '2016-11-07 13:37:00'
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN a
set a.update_date = now()
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN a
set a.schema_name = 'jrhoades_P2P2'
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

-- TABLE MIN_TO_DO

UPDATE MIN_to_DO a
set a.db_server_version = version()
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN_to_DO a
set a.create_date = '2016-11-07 13:37:00'
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN_to_DO a
set a.update_date = now()
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

UPDATE MIN_to_DO a
set a.schema_name = 'jrhoades_P2P2'
where Phenotype_MIN_Number is not null
and UniProt_Disease_Name is not null
and UniProtKB_Entry is not null;

-- TABLE Protein_Synonym

UPDATE Protein_Synonym a
set a.db_server_version = version()
where UniProtKB_Entry is not null
and Protein_Synonym is not null;

UPDATE Protein_Synonym a
set a.create_date = '2016-11-07 13:37:00'
where UniProtKB_Entry is not null
and Protein_Synonym is not null;

UPDATE Protein_Synonym a
set a.update_date = now()
where UniProtKB_Entry is not null
and Protein_Synonym is not null;

UPDATE Protein_Synonym a
set a.schema_name = 'jrhoades_P2P2'
where UniProtKB_Entry is not null
and Protein_Synonym is not null;

-- TABLE UniProt

UPDATE UniProt a
set a.db_server_version = version()
where UniProtKB_Entry is not null;

UPDATE UniProt a
set a.create_date = '2016-11-07 13:37:00'
where UniProtKB_Entry is not null;

UPDATE UniProt a
set a.update_date = now()
where UniProtKB_Entry is not null;

UPDATE UniProt a
set a.schema_name = 'jrhoades_P2P2'
where UniProtKB_Entry is not null;









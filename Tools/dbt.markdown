**Run DBT Function** :

dbt init
dbt run

dbt run-operation snapshot
dbt run-operation get_tables --args '{"project_id":"louder-billing", "dataset_name":"dev_reporting"}'

**DBT Profiles**
Description : This is a connection configuration
macOS path : .dbt/profiles.yml

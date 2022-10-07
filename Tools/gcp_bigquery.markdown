## Big Query Reference

{REVOKE/GRANT} `roles/bigquery.dataViewer`
ON SCHEMA mydataset
FROM 'user:joe@example.com';

REVOKE `permission/bigquery.tables.delete`
ON TABLE `louder-billing.dev_dbt_snapshots_test.IanCantDeleteMe`
FROM 'user:ian.kenney@louder.com.au';

Resource Name:
bigquery table: //bigquery.googleapis.com/projects/louder-billing/datasets/dev_dbt_snapshots_test/tables/IanCantDeleteMe

//bigquery.googleapis.com/projects/louder-backups/datasets/test_backup/tables/donotdelete



### Things to Research

**Query Explenation Map** : Used to Diagnose Performance Issues with Queries
**Query Validator with Pricing Calculator** : Estimate Cost of Query
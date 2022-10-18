**Federated Datasource** : An external data source that can be queried directly even though the data is not stored in BigQuery.
**Authorised View** : authorized view allows you to share query results with particular users and groups without giving them access to the underlying tables.

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
- Large scale aggregated SQL queries are best run on BigQuery
- BigQuery is not designed to support strongly consistent transactions.

**Nested and Repeated Fields:**
Arrays:
	list of values
	Use arrays to represent one-to-many relationships where columns store a single data type 
    - arrays of arrays not supported
    - array of structs supported
    - use UNNEST to unpack

struct:
	ordered fields with type and name
	- structs can be compared with each other (=|!=)
	- use . (struct.field)

**Partition Tables**
	Date based partition:
      - Ingestion by partition: Creates "_PARTITIONTIME"
      - Partition existing: 
		NULL parition for null values
		UNPARTITION partition for when values outside allowed range
	Integer range partition:
		- Integer value, specify start and end with interval
		- UNPARTITION for values outside range

	Can require queries include a partition filter using require_partition_filter

**Sharded Tables**
	Use seperate tables to break up data
	[TABLE_NAME_PREFIX]_YYYMMDD
	Partitioning is preferred over sharding

**Clustered Tables**
	Data sorted in one or more columns
	Store alike data closer together 
	- Table must be partitioned
	- Can cluster multiple columns
	- Best on high cardinality fields

**Materalised Views**
	Query that is cached, and refreshes when the underlying data changes.

**Onboarding Data into BigQuery**
  Avro is preferred file format
    - Compressed Avro Files not supported
    - Compressed Avro Data Blocks are supported
  ParQuet allows for smaller files

BigQuery Transfer Service: Scedule data to BQ, integrates to other services through connectors
BQ Command Line : Cli Tool for BQ

**Cloud Storage:**
Natively Export: Avro, JSON, Parquet

Transfer Service: export to Google SaaS applications (AdWords, DoubleClick, etc.)
Federated Datasource: external data source that can be queried directly.
Authorised View: view that can be shared without giving access to the underlying tables.

**Column Level Access Control**
  Control access to specific columns in a table
  Assign policy tags to BQ Columns, then enforce access on the tags
**Row Level Security**
  Use SQL GRANT to specify a FILTER that automatically gets applied for some users
  Other permissions might override row level security (Owner, Creator, BQ[edit, owner, viewer, monitor], Billing)

BigQuery interactive SQL translator : translate a query from a different SQL dialect into a Google Standard SQL query

## Big Query Reference

{REVOKE/GRANT} `roles/bigquery.dataViewer`
ON SCHEMA mydataset
FROM 'user:joe@example.com';

REVOKE `permission/bigquery.tables.delete`
ON TABLE `louder-billing.dev_dbt_snapshots_test.IanCantDeleteMe`
FROM 'user:ian.kenney@louder.com.au';

### Things to Research

**Query Explenation Map** : Used to Diagnose Performance Issues with Queries
**Query Validator with Pricing Calculator** : Estimate Cost of Query
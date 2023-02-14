### Big Query
SQL Analytical Data store
- BigQuery is not designed to support strongly consistent transactions.
- ACID Complient
- geospatial processing
- SQL ML
- Query results are cached for 24 hours
- Time travel mechanism for BigQuery for last 7 days

Accepted file formats: Avro, CSV, JSON, ORC (This is for hardoop), or Parquet
BI Engine: In-memory engine that speeds up queries by caching data that is used mose frequently
scheduled queries: bq is able to schedule queries to a destination table

Exporting Data
  - BigQuery can export up to 1 GB of data to a single file. If you are exporting more than 1 GB of data, you must export your data to multiple files.
  - The only supported export location is Cloud Storage

You cannot use the Web UI to:
– Upload a file greater than 10 MB in size
– Upload multiple files at the same time
– Upload a file in SQL format

**Limitations**
  - Runs a max of 2 DML jobs concurrently, max 20 can be qued for no more than 6 hours.
  - Cannot change datatype in existing table
  - BigQuery does not support scheduled export to Google Storage
  - BigQuery cannot store audio or video
  
  Caching not enabled when:
    - queries against multiple tables using a wildcard even if the “Use Cached Results” option is checked
    - when a destination table is specified in the job configuration, the GCP Console, the classic web UI, the command line, or the API.

**Improve Query Perforamnce**

  - Avoid Select *

  - Partition Tables:
	This creates "_PARTITIONTIME"
	Can require queries include a partition filter using require_partition_filter

  - Clustered Tables:
	Can only be applied to a partitioned table. Data on columns sorted.
	Best used on high cardinality fields.
	Using Limit on clustered tables improves performance

  - Sharded tables:
	break up data with separate tables (partitioning preferred over sharding)

**Architecture**
External Tables:
  schema and metadata in bigquery but data is sotred in external source
  - useful to save on storage costs
  - better for etl
  - not as performant as internal / native tables
  - cannot be referenced in wild card query
  - are not supported for clustering

Federated Queries:
  Allows bigquery direct access to cloud SQL or cloud spanner.
  - returns results in a temporary table.

Locations:
  - Cannot relocate a dataset after it is created. 
  	  Instead, export data to storage, move bucket to new location, create new dataset in new location, load data

**Onboarding Data into BigQuery**
  Avro is preferred file format
    - Compressed Avro Files not supported
    - Compressed Avro Data Blocks are supported
  also supported: Parquet, ORC (Big Data Formats)
  also supported: csv, json

Bigquery Data Transfer Service: 
  - Access using cloud console, bq, API
  - Transfer data from AWS, Teradata, Redshift
  - Transfer data from Google SaaS app (CM, Google ads, etc)

**Schema Changes**
  - You cannot specify a different data type while creating a view
  - You cannot change a column’s name or data type in BigQuery (instead create new table and INSERT INTO)


**Manage Query Costs**
  - For organisations that heavily use Bigquery, flat pricing can reduce costs

Slots:
This is a unit of compute (worker) in bigquery
  - On Demand: aprox 2,000 slots
  - Flat Rate: Purchase a fixed number of slots 
  - Flex slots: Pay for the specified number of slots for > 1 min - useful for events such as retail holidays

Commitment -> Reservation -> Assignment: 
  Bucket of slots that can be allocated to types of tasks (BI Queries get # slots)
  Can be assigned to a organisation/folder/project
  idle slots are shared for other reservations

Monitoring:
  - Number of slots is available in stackdriver
  - Slots used can be viewed in information schema

**Materalised Views**
	Query that is cached, and refreshes when the underlying data changes.

**Authorised Views**
  Allow controlled access to 3rd party to different tables. Should ideally be created in a separate project.
  Doesn't give access to users to the underlying data

**Datastream**
Use for streaming data into bigquery. (Legacy product is streaming inserts, which is still supported)
	- supports replication from (cloud sql, databases etc)

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

**Long Term Storage:** Data that has not been used for 90 days. Equivelant in pricing to Nearlind Storage

BigQuery interactive SQL translator : translate a query from a different SQL dialect into a Google Standard SQL query
Federated Datasource: external data source that can be queried directly.

**Roles**
Bigquery User: Access to run, create, read.

**Column Level Access Control**
  Control access to specific columns in a table
  Assign policy tags to BQ Columns, then enforce access on the tags
**Row Level Security**
  Use SQL GRANT to specify a FILTER that automatically gets applied for some users
  Other permissions might override row level security (Owner, Creator, BQ[edit, owner, viewer, monitor], Billing)

**Bigquery Functions**
DENSE_RANK() : always increments by 1
RANK() : peer rows recieve the same rank, skips ranks but number of rows with same rank
SAFE_OFFSET(): will give NULL value if the index out of range

ST_SnapToGrid : Returns the input GEOGRAPHY, where each vertex has been snapped to a longitude/latitude grid
ST_NPOINTS :  Returns the number of vertices in the input GEOGRAPHY
ST_POINTN : Returns the Nth point of a linestring geography as point geography, where N is the index. 
ST_PERMIETER : Returns the length in meters of the boundary of the polygons in the input GEOGRAPHY

Aproximation functions have a error margin of 1-2%
APROX_COUNT_DISTINCT : 

**bq command line**
Cli Tool for BQ
  - bq is the preferred tool for backups
bq query:
--use_legacy_sql=false : use standard sql
--destination_table
--dry_run : When specified, the query is validated but not run.
--flatten_results={true|false}
--maximum_bytes_billed


bq load:
-null_marker={string} : optional custom string that represents a NULL value
-replace=true/false : replaces the file if true else will append
--autodetect={true|false} : schema autodetection
--ignore_unknown_values={true|false} 
--max_bad_records={#} : maximum number of bad records allowed before the entire job fails

**Query Explenation Map** : Used to Diagnose Performance Issues with Queries
**Query Validator with Pricing Calculator** : Estimate Cost of Query

## Big Query Reference

{REVOKE/GRANT} `roles/bigquery.dataViewer`
ON SCHEMA mydataset
FROM 'user:joe@example.com';

REVOKE `permission/bigquery.tables.delete`
ON TABLE `louder-billing.dev_dbt_snapshots_test.IanCantDeleteMe`
FROM 'user:ian.kenney@louder.com.au';




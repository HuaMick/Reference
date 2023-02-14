**Google Interconnect**
Dedicated link to google cloud
  - Dedicated Interconnect : Dedicated connection to google for > 10Gbps
  - Partner Interconnect : Connection via service provider for < 10Gbps or where dedicated is not available

**Apache vs GCP**
Apache Hive <-> Bigquery
Hbase <-> Bigtable
Spark / Hadoop <-> Dataproc


**Resource Hierarchy**
Organization > Folders > Projects > Resources






**Cloud Pub/Sub** : Data Ingestion for Stream and Messaging {Asynchronous, 
Stores data for 7 days}

**Google Analytics 360** : Website Tracking tools

**Latency** : speed of packet transfers
**Bandwidth** : maximum capacity of the network
**Throughput** : quantity of data being sent

**atomicity consistency isolation durability (ACID)** : ACID properties ensure that all database transactions remain accurate and consistent

**basically available soft state eventual consistency (BASIC)** : accepts a level of failure in consistency

**Migration**

Offload: Store excess data to the cloud (Take advantage of extra storage capacity)
Full Migration: Move all data and pipelines to the cloud

Best practise:
  - Transfer individual use cases at a time
  - Do not modify tables in transfer process
  - Configure and test downstream processes
  - Migrate analytical workloads first
  - prioritize least-risky usecases

Data Transfer Appliance: 
  - On Prem
  - For large data use rehydration to encrypt and decrypt data
  - Takes more than one week to upload the data over the network.

gsutil:
  - Use for < 1TB of data

Storage Transfer Service
  - Use for > 1 TB of data
  - Cloud to Cloud
  - Bucket to bucket


**Pig** : Pig is scripting language which can be used for checkpointing and splitting pipelines

**To Review**
Bigquery Transfer Service vs Storage Transfer Service
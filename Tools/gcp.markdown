## Google Cloud Platform

### Container Management

**Google Container Registry**

**Google Artifact Registry**

### Data Ingestion and Collection
---
**Cloud Pub/Sub** : Data Ingestion for Stream and Messaging {Asynchronous, 
Stores data for 7 days}

**Cloud Monitoring** : Logging across all google cloud products

**Google Analytics 360** : Website Tracking tools

### Data Pipelines and ETL
---

**Cloud Dataproc** : Spark and Hadoop ETL

**Cloud Dataflow** : Stream and Batch Data Processing using Apache Beam

### Online Transactional Processes (OLTP)
---
**Cloud SQL** : RDB On The Cloud. Good if you just need a single database instance.

**Cloud Spanner** : RDB Fully managed the scales globally. Best if you need multiple databases that scale. Supports atomicity consistency isolation durability (ACID) which is great for globally synced transactions.

### Online Analytical Processing (OLAP)
---
**Big Query** : SQL Managed Column Data Store That Supports SQL

### Application Memory
---

**Cloud Memory Store** : NoSQL Data Store For Applications that require caching

**Cloud Firestore** : Less Than 1 TB Persistent Memory

### Binary or Object Data
---

**Cloud Storage** : Images or Large Media Files or Backups

### Multi Purpose (Both OLTP and OLAP)
---
**Cloud Big Table**: NoSQL low latnecy scalable database that supports analytics

---
### File & Object Storage

**Unstructured or Files**


    Object Storage - Binary, blob unstructured

**Cloud File Store**

    Managed Network Attached Storage

---
---

### Virtual Machines
---
**GCP Local SSD** : Low lantancy block storage
**Persistent Disk** : Mix of SSD and Hard Drive block storage

### NoSQL
---

**Cloud Data Store, Cloud Fire Store**

    Less Than 1 TB Persistent Memory

**Cloud Big Table**

    Greater Than 1 TB Persistent Memory
---

**Upload CSV, JSON, AVRO**

gsutil

bq (Big Query) Command Line Tool

Big Query API


**Latency** : speed of packet transfers
**Bandwidth** : maximum capacity of the network
**Throughput** : quantity of data being sent

**atomicity consistency isolation durability (ACID)** : ACID properties ensure that all database transactions remain accurate and consistent

**basically available soft state eventual consistency (BASIC)** : accepts a level of failure in consistency


### Apache Beam
---

**watermark** : allowed time after the close of the window to allow in late data into the window

**bounded data** : data that is of a set size (batch processing)

**unbounded data** : data that is not of a set size (stream processing)

**window** : stream processing aggregation time ranges (the time range to aggregate over in stream data)

**global window** : stream processing aggregation window that is from -infinity to +infinity

**side input** : separate dataset used to enrich streaming data 

**data exfiltration** : internal employee strealing company data

**virtual private cloud (VPC)** : a separation of internal gcp networks for secuirty (acts like its own network) 

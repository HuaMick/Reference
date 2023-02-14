### Dataproc
Managed instance of Spark or Hadoop

Integrates with: 
BigQuery, Cloud Storage: Cloud Storage Connector, HDFS, Cloud Bigtable, Stackdriver Logging, and Stackdriver Monitoring.

Supports: Spark, Spark SQL, PySpark, MapReduce, Hive, and Pig jobs

Does not natively connect to Pub/Sub

  - optimal performance, split your data in Cloud Storage into files with sizes from 128 MB to 1 GB
  - Place VMs in the same zone
  - By default, Dataproc reserves 3.5GB of memory for applications, and allows 1 job per GB.
  - Use a larger memory machine type for the cluster master VM
  - By default, Dataproc jobs will not automatically restart on failure
	To set restartable jobs: 
    --max-failures-total
	--max-failures-total


To run Hive on Dataproc:
  - Use MySQL to store data
  - 

**Connectors**
  - Bigquery
  	If the job completes successfully, temporary files are automatically deleted from the cluster. 
	If the job fails, you need to delete temp files manually.
  - Cloud Storage Connector
  - Bigtable Connector
  - Stackdriver Logging
  - Stackdriver Monitoring

**Secondary Workers**
  - Non-preemptible

  - Preemptible: 
	- Only function as processing nodes
	- Can be added after the cluster is created
	- Can be reclaimed at any time
	- You must have at least 1 standard worker node
	- SSD is not available on preemtible worker nodes
	- maximum lifetime of 24 hours

Spot VM: Preemptible with no maximum lifetime

**PHS Cluster / Persistent History Server**
web interfaces to view job history for jobs run on active or deleted Dataproc clusters
  - --enable-component-gateway

**Ephemeral Clusters** : Shutdown after complete to save costs

**Enhanced Flexibility Mode** 
Saves the output of secondary workers to primary workers so if they are removed, work is saved.
Two modes:
  - Primary-worker shuffle : Recommended for Spark Jobs
  - HCFS (Hadoop Compatible File System) shuffle : Recommended for smaller jobs

**High Availability Mode (HA)**
3 Master Nodes, Reboot on failure

**Scaling**
 - ExternalShuffleService is not recommended


Auto-scaling :
  - Not compatible with: HDFS, High Availability, Spark Structured Streaming

**Graceful Decomissioning**
Allow workers to complete before they are removed.
  - Graceful decommission should ideally be set to be longer than the longest running job on the cluster. 

**Configuring Dataproc**
  - initialization actions
  - configuration files
  - log into master node and make changes

**Recommended Practices**
  - Use Cloud Storage for persistent storage
  - Process stream data with dataflow place in cloud storage then read from cloud storage
  - Use cloud storage as initial and final destinations of data

Preemtible Worker Nodes:
  - preemptible workers should be < 50% of the total number of all workers (<30% for large jobs)
  - Generally, short-lived jobs are more suitable for preemptible VM use
  - Not recommended for streaming jobs

Auto-scaling:
  - Use for store data on external, process many jobs, enhanced flexibility mode
  - Do not use for HDFS, YARN Node Labels, Park Structured Streaming, Idle CLusters, different sized workloads

Enhanced Flexibility Mode:
  - Requires sufficient number of primary workers

Cloud Storage:
  - Your data in ORC, Parquet, Avro, or any other format will be used by different clusters or jobs, and you need data persistence if the cluster terminates.
  - You need high throughput and your data is stored in files larger than 128 MB.
  - You need cross-zone durability for your data.
  - You need data to be highly available—for example, you want to eliminate HDFS NameNode as a single point of failure.

Local HDFS:
  - Your jobs require a lot of metadata operations—for example, you have thousands of partitions and directories, and each file size is relatively small.
  - You modify the HDFS data frequently or you rename directories. (Cloud Storage objects are immutable, so renaming a directory is an expensive operation because it consists of copying all objects to a new key and deleting them afterwards.)
  - You heavily use the append operation on HDFS files.
  - You have workloads that involve heavy I/O. For example, you have a lot of partitioned writes, such as the following:
  spark.read().write.partitionBy(...).parquet("gs://")
  - You have I/O workloads that are especially sensitive to latency. For example, you require single-digit millisecond latency per storage operation.

Use SSH SOCKS Proxy to access internal services (YARN Web Interface)

Persistent Disk vs SSD:
  - HDD storage is sometimes appropriate for large datasets that are not latency-sensitive or are infrequently accessed.

**Migration**
Migrating from Apache Spark
  - switch to SSD

HDFS Data to Google Cloud
  - Hadoop DistCp
    - Push Model : Simplest, but if processing, need extra resources
    - Pull Model : Good if still processing and don't have enough resources



**Roles**
  - dataproc.editor : stop clusters, initiate workflow templates, and other common user tasks
  - dataproc.admin : same as editor but can also get IAM permissions
  - dataproc.viewer : view only
  
**Internal IP Addresses Only**
This will stop access to github. With this option store dependancies on cloud storage.
cluster nodes can download the dependencies from Cloud Storage from internal IPs.

**Trouble shooting**
  - Task was not acquired : often the result of the submission of many concurrently running jobs or jobs whose drivers consume significant memory
  - No agent on master node(s) found to be active: out-of-memory (OOM too many concurrent jobs) or network issues 
  - Task not found : Indicates that the cluster was deleted while a job was running

why a Dataproc job is being delayed (throttled): Awaiting execution
  - Too many running jobs
  	-> Monitor logs dataproc:dataproc.scheduler.driver-size-mb cluster property to less than 1024
	-> adjust dataproc:dataproc.scheduler.max-concurrent-jobs 
  - High system memory usage / Not enough free memory    
    -> increase the value of the dataproc:dataproc.scheduler.max-memory-used
	-> increase the value of the dataproc.scheduler.min-free-memory.mb
  - Job Rate limit exceeded
    -> change dataproc:dataproc.scheduler.job-submission-rate   
 
**Commands**
--graceful-decommission-timeout : enable graceful decommissioning
--driver-log-levels : Configure Logging

spark.executor.cores : use this paramter to configure the number of cores used by a job
gcloud dataproc jobs submit pyspark : Submit dataproc Job

–properties file_prefix:property=value








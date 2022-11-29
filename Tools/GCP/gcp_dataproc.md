Managed Spark and Hadoop instance

**Ephemeral Clusters** : Shutdown after complete to save costs

**Graceful Decomissioning** : Allow workers to complete before they are removed.
**Enhanced Flexibility Mode** : Saves the output of tasks so workers can be scaled more easily.

**Preemptible Worker Nodes**: 
- Only function as processing nodes
- Can be added after the cluster is created
- Can be reclaimed at any time
- You must have at lease 1 standard worker node
- SSD is not available on preemtible worker nodes!

**Auto-Scaling** : Not recommended for: 
HDFS : Hardoop Special On Prem Storage System
YARN Node Labels : Grouping Nodes with similar characteristics together
park Structured Streaming
Idle Clusters

**Integrates with** : 
BigQuery, 
Cloud Storage: Cloud Storage Connector, HDFS compatibility 
Cloud Bigtable, Stackdriver Logging, and Stackdriver Monitoring.

**Commands**
Copy Storage to Storage:
gsutil cp gs://cloud-training/preppde/benchmark.py gs://qwiklabs-gcp-01-882578ab3d23/

Configure Logging:
--driver-log-levels

Submit dataproc Job:
gcloud dataproc jobs submit pyspark 'gs://qwiklabs-gcp-01-882578ab3d23/benchmark.py' \
--cluster='mjtelco' \
--region='us-east1' \
--max-failures-per-hour='1' \
--id='mjtelco-test-1' \
-- 20


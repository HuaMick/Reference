
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

**Integrates with** : BigQuery, Cloud Storage, Cloud Bigtable, Stackdriver Logging, and Stackdriver Monitoring.

gsutil cp gs://cloud-training/preppde/benchmark.py gs://qwiklabs-gcp-01-882578ab3d23/

gcloud dataproc jobs submit pyspark 'gs://qwiklabs-gcp-01-882578ab3d23/benchmark.py' \
--cluster='mjtelco' \
--region='us-east1' \
--max-failures-per-hour='1' \
--id='mjtelco-test-1' \
-- 20

gcloud dataproc jobs submit pyspark 'gs://qwiklabs-gcp-01-882578ab3d23/benchmark.py' \
--cluster='mjtelco' \
--region='us-east1' \
--max-failures-per-hour='1' \
--id='mjtelco-test-2' \
-- 220

gcloud dataproc jobs submit pyspark 'gs://qwiklabs-gcp-01-882578ab3d23/benchmark.py' \
--cluster='mjtelco' \
--region='us-east1' \
--max-failures-per-hour='1' \
--id='mjtelco-test-3' \
-- 220

gcloud dataproc jobs submit pyspark 'gs://qwiklabs-gcp-01-882578ab3d23/benchmark.py' \
--cluster='mjtelco' \
--region='us-east1' \
--max-failures-per-hour='1' \
--id='mjtelco-test-4' \
-- 220
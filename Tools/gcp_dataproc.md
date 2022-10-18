
**Auto-Scaling** : Not recommended for: HDFS, YARN Node Labels, park Structured Streaming, Idle Clusters

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
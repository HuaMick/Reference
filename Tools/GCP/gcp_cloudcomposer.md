### Cloud Composer
Series of components based on Kubernetes Engine

Combination of multi-tenant and customer project resources
  Tenant: multiple customers can share the same resources
	- Cloud SQL
	- App Engine Flexible -> airflow web server
  Customer: 
    - Cloud Storage
    - Scheduler
    - Worker Nodes
    - Celery Executor
    - Redis

**Sensors**
special type of Operator that are designed to do exactly one thing - wait for something to occur.
  - poke - The Sensor takes up a worker slot for its entire runtime
  - reschedule - The Sensor takes up a worker slot only when it is checking


	airflow.sensors.base
	airflow.sensors.bash
	airflow.sensors.date_time
	airflow.sensors.external_task
	airflow.sensors.filesystem
	airflow.sensors.python
	airflow.sensors.time_delta
	airflow.sensors.time_sensor
	airflow.sensors.weekday
	airflow.providers.google.cloud.sensors.bigquery
	airflow.providers.google.cloud.sensors.bigquery_dts
	airflow.providers.google.cloud.sensors.bigtable
	airflow.providers.google.cloud.sensors.cloud_composer
	airflow.providers.google.cloud.sensors.cloud_storage_transfer_service
	airflow.providers.google.cloud.sensors.dataflow
	airflow.providers.google.cloud.sensors.dataform
	airflow.providers.google.cloud.sensors.datafusion
	airflow.providers.google.cloud.sensors.dataplex
	airflow.providers.google.cloud.sensors.dataprep
	airflow.providers.google.cloud.sensors.dataproc
	airflow.providers.google.cloud.sensors.gcs
	airflow.providers.google.cloud.sensors.looker
	airflow.providers.google.cloud.sensors.pubsub
	airflow.providers.google.cloud.sensors.tasks
	airflow.providers.google.cloud.sensors.workflows

**Private IP Composer**
To reach a private composer, you need to allowlist source addresses on master authorized network on GKE cluster to enable the ci/cd machine to access the GKE control plane. 

**Authorized Networks** : Authorized networks allow you to specify CIDR ranges that can access your environment's cluster control plane using HTTPS.
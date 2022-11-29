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
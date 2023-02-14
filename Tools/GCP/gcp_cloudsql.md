
### Cloud SQL

  - Up to 30TB

fluentD: Log collector for MYSQL, required by logging agent to read database logs

scheduled maintenance is not considered a failover event by GCP

To export your data to bigquery it needs to be exported to cloud storage first.

Cloud SQL Auth Proxy : 
Cloud SQL connector that provides secure access to your instances without a need for Authorized networks or for configuring SSL
  - Use a service account for authentication
  - ./cloud_sql_proxy -instances=INSTANCE_CONNECTION_NAME=tcp:0.0.0.0:1234


**High Availability**
  - primary and standby instances share a regional persistent disk that is written to. 
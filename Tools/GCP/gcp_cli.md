

initalise: gcloud init

## Authentication / Logging In 

**Standard Login Using Oauth** : gcloud auth login
**Login for Applications Using Oauth** : gcloud auth application-default login
Log out of all accounts: gcloud auth revoke --all

**Impersonate Service Account** : gcloud config set auth/impersonate_service_account {service account}

**Copy current folder -> cloud storage bucket**: gsutil cp * gs://la-sql-111


gcloud config set auth/impersonate_service_account louder-backups-owner@louder-backups.iam.gserviceaccount.com

docker build -f Dockerfile -t gcr.io/bigquery-362207/dockerdash:1 .

docker push gcr.io/bigquery-362207/dockerdash:1

gcloud config unset auth/impersonate_service_account 
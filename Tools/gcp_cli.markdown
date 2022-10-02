

initalise: gcloud init

## Authentication / Logging In 

**Standard Login Using Oauth** : gcloud auth login
**Login for Applications Using Oauth** : gcloud auth application-default login
Log out of all accounts: gcloud auth revoke --all


docker build -f Dockerfile -t gcr.io/bigquery-362207/dockerdash:1 .

docker push gcr.io/bigquery-362207/dockerdash:1
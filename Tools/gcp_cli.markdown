

initalise: gcloud init

Log in to account: gcloud auth login
Log out of all accounts: gcloud auth revoke --all


docker build -f Dockerfile -t gcr.io/bigquery-362207/dockerdash:1 .

docker push gcr.io/bigquery-362207/dockerdash:1
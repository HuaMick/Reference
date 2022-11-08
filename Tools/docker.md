List Docker Images: docker image ls
List Docker Containers: docker container ls

Build Docker Container: docker build .



Remove Docker Image: docker image rm {image_id}
Run Shell on Docker Image: docker run -it {image_name} sh 
Note: Type "exit" to exit the containershell


**Test Docker Container Using Cloud Run**
gcloud beta code dev


gcloud builds submit --tag gcr.io/dni-playground/dbt-test

gcloud run deploy pubsub-tutorial --image gcr.io/dni-playground/dbt-test  --no-allow-unauthenticated
--set-env-vars=

gcloud iam service-accounts create cloud-run-pubsub-invoker \
    --display-name "Cloud Run Pub/Sub Invoker"

gcloud run services add-iam-policy-binding pubsub-tutorial \
--member=serviceAccount:cloud-run-pubsub-invoker@dni-playground.iam.gserviceaccount.com \
--role=roles/run.invoker

gcloud projects add-iam-policy-binding dni-playground \
   --member=serviceAccount:service-78050365543@gcp-sa-pubsub.iam.gserviceaccount.com \
   --role=roles/iam.serviceAccountTokenCreator

gcloud pubsub subscriptions create myRunSubscription --topic chatbot-test \
--ack-deadline=600 \
--push-endpoint=https://pubsub-tutorial-sftzl35t5q-ts.a.run.app/ \
--push-auth-service-account=cloud-run-pubsub-invoker@dni-playground.iam.gserviceaccount.com

australia-southeast1
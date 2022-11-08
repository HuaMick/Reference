**Max Payload Size**: 10mb
**Min Retention Duration**: 10 minutes
**Default Retention Duration**: 7 Days


gcloud pubsub topics list
gcloud pubsub topics list-subscriptions LabTopic2
gcloud pubsub topics create LabTopic2
gcloud pubsub topics delete LabTopic
gcloud pubsub subscriptions create --topic LabTopic2 LabSub3
gcloud pubsub subscriptions delete LabSub

gcloud pubsub topics publish LabTopic2 --message=" Hello 1"
gcloud pubsub subscriptions pull LabSub3 --auto-ack --limit={Number of Messages to Pull}
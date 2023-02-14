### Pub / Sub

subscriber > Subscription > Topic
  - Min retention duration : 10 min
  - default rention duration : 7 days
  - Maximum size for a publish request : 10MB 
  - Recommended to use cloud storage if need extreemly low cost, and data freshness is not a requirement.

**pubsub lite**
trades off operational workload, availability, and features for cost efficiency
  - supports asynchronous data replication
  - requires you to manually reserve and manage resource capacity
  - single zone
  - Pay for allocated capacity whether you use it or not  

**confluent cloud**
  - managed kafka instance
  
**Push vs Pull**
Push
Topic -> Subscription
  - Must accept a HTTPS Post with a valid SSL certificate
  - endpoint must be configured to use an authentication header
  - Multiple topics for same webhook
  - GCP dependancies cannot be setup
  - App Engine or cloud function


Pull
Subscription <- Topic
  - Large Volume of Messages
  - Efficiency and throughput
  - No HTTPS Endpoint

once at least one subscriber for a each subscription has acknowledged the message it will be deleted from storage
Data is stored inside topics, you can restrict where data is stored by applying an organisation policy on topics

Can be configured to trigger when a file is uploaded to cloud storage

Pubsub can be used for catching error messages

**Limitations**
  - Pubsub does not add timestamp to messages by default
  - If message exceeds 10mb then it cannot be published

Thinks Kafka Has that Pubsub does not:
  - The ability to seek to a particular offset in a topic, possibly back to the start of all data ever captured
  - Support for publish/subscribe semantics on hundreds of topics
  - Retain per-key ordering

**Max Payload Size**: 10mb




**Snapshots**
  - unacknowldeged messages are retained by default for 7 days
  - Snapshots expire if the oldest message in the snapshot exceeds message retention duration

Pubsub Seek:
Seek allows changing the acknowledged status of pubsub messages in bulk
  - requires retention policy of acknowledged messages on the subscription
  - seek to a snapshot - goes back to a point in time and replay all unacknowledged at that point in time
  - seek to past - set all messages after point in time as unacknowledged
  - seek to future - sets all messages to acknowledged
  - if deploying new code you should seek to a snapshot


gcloud pubsub topics list
gcloud pubsub topics list-subscriptions LabTopic2
gcloud pubsub topics create LabTopic2
gcloud pubsub topics delete LabTopic
gcloud pubsub subscriptions create --topic LabTopic2 LabSub3
gcloud pubsub subscriptions delete LabSub

gcloud pubsub topics publish LabTopic2 --message=" Hello 1"
gcloud pubsub subscriptions pull LabSub3 --auto-ack --limit={Number of Messages to Pull}
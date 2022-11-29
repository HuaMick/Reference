**Cloud Pub/Sub** : Data Ingestion for Stream and Messaging {Asynchronous, 
Stores data for 7 days}

**Google Analytics 360** : Website Tracking tools

**Latency** : speed of packet transfers
**Bandwidth** : maximum capacity of the network
**Throughput** : quantity of data being sent

**atomicity consistency isolation durability (ACID)** : ACID properties ensure that all database transactions remain accurate and consistent

**basically available soft state eventual consistency (BASIC)** : accepts a level of failure in consistency

**Migration**

Offload: Store excess data to the cloud (Take advantage of extra storage capacity)
Full Migration: Move all data and pipelines to the cloud

Best practise:
  - Transfer individual use cases at a time
  - Do not modify tables in transfer process
  - Configure and test downstream processes
  - Migrate analytical workloads first
  - prioritize least-risky usecases

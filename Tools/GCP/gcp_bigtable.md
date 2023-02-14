### Big Table
NOSQL, wide column store, that has effiecent read and write, recommended for > 1TB in data storage

- recommend > 1TB of Data 
- Joins are not supported, no concept of foreign keys
- Metadata is stored on nodes, data is stored on colussus
- Each node has pointers to a set of tablets, CPU is required to manage all its associated tablets
- Empty columns don't take any space
- all client requests go through a front-end server before they are sent to a Cloud Bigtable node
- Choice between SSD and HDD is permanent
- Each zone in a region can have only 1 cluster

**Limitations**
  - Cannot switch storage type SSD <-> HDD natively. To switch create a new table and restore a backup to that table.
  - Bigtable is not ideal for long term analytics data storage.
  - Bigtable does not support coprocessors unlike HBase

**Profiles**
Tells Bigtable instance how to handle incoming requests from an application
  - Single Cluster routing: routes all requests to 1 cluster. good if strong consistency is required.
	This will allow atomic (all or nothing) transactions
  - Multi-cluster routing: automatically routes requests to the nearest cluster in an instance.
	Can't have single-row transactions (atomic) with multi-cluster routing -> eventual consistency
  - Cluster group routing: requests to the nearest available cluster within a cluster group that you specify

**Nodes:** 
- Each Node can support 10K writes per a second
- When instance storage utilization reaches 70% per node, additional nodes should be added
- Add nodes if there is a sustained increase in write latency

**Performance Testing**
 - Use a production instance
 - Use at least 300GB of data
 - Before you test, run a heavy pre-test, this warms up bigtable
 - Run your test for at least 10 minutes


**Improving performance**
Scaling:
  - Single cluster	
		70% average CPU utilization
		90% CPU utilization of the hottest node
  - 2 clusters with multi-cluster routing	
		35% average CPU utilization
		45% CPU utilization of hottest node

  - for sensitive applications CPU < 50% and storage utlization < 60% per node
  - In general, do not use more than 70% of the hard limit on total storage, else add nodes

Replication
  - improve read throughput, especially when you use multi-cluster routing.
  - reduce read latency by placing your Bigtable data geographically closer to your application's users
  - may reduce write throughput because replication requires each cluster to do additional work
  - multi-cluster routing, replication for Bigtable is eventually consistent

Column Families
  - Related columns in a table that are frequently accessed together
  - Max 100 column families 

Recommended practises:
  - design a schema that makes it possible to distribute reads and writes evenly across each table
  - Avoid large number of columns: Combine columns into a single column using delimiters instead
  - Use SSD 
  - Avoid inactivity, create artificial traffic if needed
  - Don't reduce cluster size by more than 10% for each 10 minute period
  - For jobs of different types (write, read, batch, stream) create separate clusters and specify different app profiles
  - Don't store more than 100 MB of data in a single row
  
**Row Key Design**
Key Visualiser: Shows access patterns and potential hot spots using a heat map
  - Aim to distrubute reads and writes evenly across nodes
  - Use row key that keeps related data together (Customer ID)
  - Avoid starting row key with linearly incrementing timestamps
  - High cardinality -> low cardinality attributes (low number of distinct possibilities e.g. gender)

example: CustomerID -> Sensor ID -> Timestamp
  - Customer ID - keeps related customer data together
  - Sensor ID - keeps sensors related to same customer together
  - Timestamp - split across customer and sensor so won't hotspot
	 
**cbt commandline tool**
- You cannot change the disk type on an existing Bigtable instance
- small range-scan lookups across TBs of data work best on Bigtable
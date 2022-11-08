
**External Consistency** : Guarentees transactions are executed sequentially even across regions

Cloud Spanner automatically creates an index on the primary key. 
The best time to add a secondary index is when you are creating the table

Cloud Spanner uses multi region read/write replicas

**Every mutation requiers a write quorom**
**Leader Region**: 1 vote
**2 Additional Voting Regions**: 2 votes

## Best Practises
**Write Heavy Compute Workloads In same Region as Leader**
**Keep average CPU uterlisation below 45%**

**Parent-Child Relationshops** : Able to locate tables on same node
**Locking read-write** : Locks and data being read as part of the transaction
**Read Only**: Reads can be handled with an replica and not locking	
**Partition DML**: Used for all data manipulation
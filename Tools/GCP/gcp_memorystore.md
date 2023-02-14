**Cloud Memory Store** : NoSQL Data Store For Applications that require caching

Highly available Managed Redis or Memcached service
  - originally based on redis

**redis**
In memory data store
  - more flexibile then memcache but also more complex
  - single threaded : grows horizontally
  - can support persistance 

Used for caching data:
  - databases
  - games
  - stream processing

Basic Tier:
	- No replication
	- No automatic failover
Standard Tier:
	- Cross zone replication
	- Automatic failover

Data Types:
  - Sets: unordered collections of unique strings
  - Hashes: collections of field-value pairs 
  - Stream: acts like an append-only log 
  - HyperLogLog: probabilistic estimates of cardinality 
  (trades perfect accuracy for efficient space utilization)

**Memcache**
In memory key-value pair data store used for application caching and sharing data across application instances
  - multi-threaded
  - not persistant : loses all data if crashes
  - does not support sets or sorted sets 
  - shared service
  - not transactional : does not wait for other transactions to complete
  - applications should be able to function without memcache
  
Batch Commands:
  - getAll()
  - putAll()
  - deleteAll()

Atomic Operations:
  - incrementAll()
  - getIdentifiable()
  - outIfUntouched()



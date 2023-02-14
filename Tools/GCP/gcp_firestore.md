
**Datastore**
Datastore is the legacy product. Firestore is a rebranding an new version of datastore.
You can use firestore in datastore mode to make it backwards compatible with datastore.

**Firestore**
  - NoSQL Document Store
  - Less than 1 TB Persistent Memory
  - Real time DB
  - Support for mobile applications
  - Strong Consistency + ACID transactions
  - Automatic Single field indexes
  - Recommended for product catalogs
  
**Queries**
- Indexes automatically created for attributes
- Composite indexes required to query on more than 1 attribute, composite indexes are not created by default 

**Write Transactions**
- Max 500 entities modified in single transaction
- Maximum duration of 60 seconds
- 10 second idle timeout after 30 seconds

Serializable Isolation :
	Data read by a transaction cannot be concurrently modified (state is frozen with in a transaction)

Read-only transaction : Improved performance for transaction with no writes

**Backups**
Managed Exports
  - Stores documents in cloud storage for backup
  - Can use Google Cloud Console or gcloud cli to export and import



**Cloud Firestore** : Less Than 1 TB Persistent Memory

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


### Cloud Storage
	- Automatic encryption
	- Activity logs and data access logs
	- Cloud Key Management
	- Uniform bucket level access: uses cloud identity
	- Signed URLS: able to access objects via a URL that expires after a period
	- Signed Policy Documents: rules around what can be uploaded (file size) 

**Public Cloud Storage Bucket** : This is a public bucket which is accessible to all

**Storage Transfer Service:**
Transfer data from one bucket to another or from on-prem storage
  - able to schedule
  - able to synchronize source with destination

**Redundancy**
Regional: Single region, replicated across zones
Duel-Region: Pair of regions with auto-failover
Multi-Region: Multi region with auto-failover

**Storage Types**
Standard: frequently accessed data
Archive: accessed roughly once every 12 months
Cold Line: accessed every 90 days
Near Line: accessed every 30 days

**Access Controls**
Uniform bucket level access: permissions to buckets or groups of objects 
Signed URLS: time-limited access to an object
Signed Policy Documents: control what can be uploaded to a bucket


**Object Lifecycle Management**
	- set minimum retention periods (retention policy)
	- automatically transition to lower cost storage class
	- prevent deletion (Object holds)

## gsutil
command line interface for cloud storage.
Commands: {Copy: "cp", List: "ls", Move: "mv", Makebucket: "mb"}

## Uploading to Cloud Storage
Small amount of data (<1TB): use gsutil
Large amount of data (>1TB): use Cloud Storage Transfer Service
Very large amount of data (>100TB): use Transfer Appliance

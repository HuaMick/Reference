## Supported Features
	- Automatic encryption
	- Activity logs and data access logs
	- Cloud Key Management
	- Uniform bucket level access: uses cloud identity
	- Signed URLS: able to access objects via a URL
	- Signed Policy Documents: rules around what can be uploaded (file size) 

**Redundancy**
Regional: Single region, replicated across zones
Duel-Region: Pair of regions with auto-failover
Multi-Region: Multi region with auto-failover

**Storage Types**
Standard: frequently accessed data
Archive: accessed roughly once every 12 months
Cold Line: accessed every 90 days
Near Line: accessed every 30 days

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

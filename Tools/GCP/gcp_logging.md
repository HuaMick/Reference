### Cloud Logging

Cloud Logging only stores data for 30 days. 
	- For storage, send logs to cloud storage.
	- For storage and analytics, send logs to bigquery

**Stackdriver**

  - fluentd : The cloud logging agent for GKE uses this open source framework

Creating Custom Metrics
  - Open Census : Recommended for creating your own custom metrics on stackdriver
  - Prometheus : Open source framework for creating custom logging metrics



**Prometheus** :

**Big Query Data Transfer Service**
*All logs with config in ... with json payload msg using regex match string starting with "Summary:"
resource.type="bigquery_dts_config"
resource.labels.config_id="635b6ba0-0000-2057-9f8b-001a114fc694" OR "635b6ba4-0000-2057-9f8b-001a114fc694" OR "635b6ba5-0000-2057-9f8b-001a114fc694"
jsonPayload.message=~"^Summary:"



resource.labels.config_id="635b6b9e-0000-2057-9f8b-001a114fc694"


protoPayload.authenticationInfo.principalEmail="pilip.delrosario@greenstone.com.au"
protoPayload.resourceName="projects/824546789121/locations/us/transferConfigs/635b6bcc-0000-2057-9f8b-001a114fc694"

protoPayload.resourceName="projects/824546789121/locations/us/transferConfigs/635b6bcc-0000-2057-9f8b-001a114fc694"

--Hide similar entries
-(jsonPayload.message=~"Dispatched run to data source with id ((?:\d[,.]?)*\d)")
--End of hide similar entries


IP address of the caller in audit logs
The IP address of the caller is held in the RequestMetadata.caller_ip field of the AuditLog object:

For a caller from the internet, the address is a public IPv4 or IPv6 address.
For calls made from inside Google's internal production network from one Google Cloud service to another, the caller_ip is redacted to "private".
For a caller from a Compute Engine VM with a external IP address, the caller_ip is the external address of the VM.
For a caller from a Compute Engine VM without a external IP address, if the VM is in the same organization or project as the accessed resource, then caller_ip is the VM's internal IPv4 address. Otherwise, the caller_ip is redacted to "gce-internal-ip". For more information, see VPC network overview.



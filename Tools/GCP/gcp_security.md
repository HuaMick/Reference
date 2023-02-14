**Log Sinks**
  - Aggregated Sink : If multiple projects, all logs can go to an aggregated sink


**Cloud Storage**
  - Customer-Supplied Encryption Keys (CSEK) : natively able to accept customer supplied encryption keys

**Cloud Key Management Service (KMS)**
  - generate, rotate, create, destroy encyrptions keys
  - Hardware security model HSM
  - Integrates with on-prem

  - Customer Managed Encryption Keys :  Keys stored on a HMS cluster or externally
  - Customer Supplied Encryption Keys : Supply your own keys to google, to be used to encrypt and decrpt data
  - Client Side Encryption: Use Tink to encrypt data before it is sent to google

  symmetric encryption : use the same key to encrypt and decrypt
  asymmetric encryption : 
    private key to descrypt and public key to encrypt. People send you their public key to encrypt data before sending it to them.

**Data Loss Prevention API**

**Client Side Encryption**
Encrypt all data before storing it in the cloud. 
	- Useful for government organisations

**data exfiltration** : internal employee strealing company data
**virtual private cloud (VPC)** : a separation of internal gcp networks for secuirty (acts like its own network) 

**Organisational Policy Constraints**
Can only be attached to entities in the resource hierarchy (Can't be applied to an IAM Group)

**Regulations**
PCI: Payment Card Industry (PCI) Data Security Standard 
HIPAA: healthcare regulation in the United States
GDPR: Eurpean Union 
Sarbanes Oxley (SOX): US regulation on public companies designed to prevent fraudulent accounting practices.

**Cloud Deployment Manager**
Automates the creation and management of gcp cloud resources

**Trust No One:**
Gcloud (key management services) kms = considered potentially accessible by google

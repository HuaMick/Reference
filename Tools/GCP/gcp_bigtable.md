
**cbt commandline tool**

- You cannot change the disk type on an existing Bigtable instance
- small range-scan lookups across TBs of data work best on Bigtable

**Nodes:** 
- Each Node can support 10K writes per a second
- When instance storage utilization reaches 70% per node, additional nodes should be added

## Row Key Design
- group together contiguous rows
- uniform distribution across the table

- Joins are not supported, no concept of foreign keys
- Data is sharded into tablets, tablets kept on Colossus
- Data is not stored on nodes, only metadata is
- Empty columns don't take any space
- Operations are atomic at the row level (all or nothing at the row)


**cbt commandline tool**
- You cannot change the disk type on an existing Bigtable instance
- small range-scan lookups across TBs of data work best on Bigtable

**Nodes:** 
- Each Node can support 10K writes per a second
- When instance storage utilization reaches 70% per node, additional nodes should be added

**Column Families**
  - Related columns in a table that are frequently accessed together
  - Max 100 column families 

**Row Keys**
- Determine which node data is written

Design :
  - Aim to distrubute reads and writes evenly across nodes
  - Avoid linearly incrementing row keys
  - Avoid low cardinality attributes (low number of distinct possibilities e.g. gender)
  - Start with high cardinality attribute then post-fix low cardinatlity
  - Store related entites in adjescent rows

Dataflow languages:
 - Java
 - Python
 - Go

Dataflow Job States:
  Running
  Not Started
  Queued
  Cancelling
  Draining : Cancelling but needs to finish something
  Updating
  Succeeded
  Failed

**Windowing:** 
Subdivide P-Collection into windows for unbounded data

  Fixed Time Windows / Tumbling Windows: Can't Overlap
  Sliding Windows / Hopping Windows: Can Overlap
  Session Windowns: Event Based Windows
  Global Window: Contains All Data
  Watermark: when data is expected to arrive, anything after is considered late data
  Triggers: When to show aggregated results for each window, Event Time, Processing Time, Data Driven, Composite

**Flattern:** Merge multiple PCollection objects into a single logical PCollection (This looks the same as UNION)
**Join:** Transforms like CoGroupByKey attempt to merge data where there are related keys in the two datasets.


**Flexible Resource Scheduling FlexRS**: Reduce Costs for Batch piplines
**Data is not persistant**
**Data is encrypted**

**Dataflow Pipelines**: Run Locally first
**GCP Service Accounts**: 
**Dataflow Uses:** Dataflow Service Account
**Workers Use**: Controller Service Account

**GroupByKey**: GroupByKey is a Beam transform for processing collections of key/value pairs

**ToDo**: I need basic knowledge of the SQL Key Words


**Input data Errors** :  Use a try-catch block is correct. output to Pub/Sub, not GCS.
*Not sure why we out put to pub/syb ^*

**DirectRunner** : Apache Beam tool that allows you to run your pipline locally


### Apache Beam
---

**watermark** : allowed time after the close of the window to allow in late data into the window

**bounded data** : data that is of a set size (batch processing)

**unbounded data** : data that is not of a set size (stream processing)

**window** : stream processing aggregation time ranges (the time range to aggregate over in stream data)

**global window** : stream processing aggregation window that is from -infinity to +infinity

**side input** : separate dataset used to enrich streaming data 

**data exfiltration** : internal employee strealing company data

**virtual private cloud (VPC)** : a separation of internal gcp networks for secuirty (acts like its own network) 

### Dataflow
GCP datapipelines using apache beam framework
Dataflow supported languages: Java, Python, Go
Alternative to apache flink

  - When used with pubsub, can only be configured to pull 
  - Can connect to Kafka with KafkaIO

PCollection: Collection of data
Bounded: Data limited - batch processed
Unbounded: Data unlimited - stream processed
Side input: separate dataset used to enrich streaming data 

Triggers: 
Beam uses triggers to determine when to emit the aggregated results of each window.
Triggers behave differently for bounded and unbounded data
  - Bounded, results are emitted after all input has been processed
  - Unbounded, results are released when the watermark passes the end of the window
Processing time triggers
  - Event Time: When the event happened
  - Processing Time: When the data entered the pipline

**Insights**
High Fan Out : A fusion break could be inserted to increase parralleism
Pre-built not utilized : Use worker image pre-build workflow

**Dataflow Prime**
  - Rightfitting : creates mutliple worker pools for each transform, configure using resource hints
  - Vertical Autoscaling : increases the capacity of workers
  - Horizontal Autoscaling : scales the number of workers up or down

**Autoscaling**

  - Vertical Autoscaling : Suitable for streaming jobs
  - Dynamic Work Rebalancing : Suitable for batch jobs

Streaming Engine:

Job is not scaling up
Dataflow has determined that adding CPU won't help
  - I/O Intense
  - Pipeline is waiting on some external call or job
  - 

Job is not scaling down
  - CPU < 75% for all workers and > 2 mins
  - Pipline backlog < 10 seconds
  --> Each worker needs equal number of processing disks
  --> Maximum disks per a worker  is 15
  example: 30 disks then can only scale down to 2 workers, as each worker will have 15 disks

**Hotkeys**
All values under a key need to be processed on same machine
  - Adding more workers will not help
  - Use a combiner
  - Combine.PerKey.withFanout / Combine.Globally.withFanout
  - 


**Dataflow runner**
Directrunner: run the pipline locally on your machine 
  - remove the runner from pipeline options to allow pipeline to run locally

**Transformations:**
  - PTransform: Apply transformation to each PCollection
  - ParDo : Apply function to each element of the Pcollection
  - DoFn : A user defined function defined in Apache Beam
  - Flattern :  Merge multiple PCollection objects into a single logical PCollection (UNION)
  - Join: Transforms like CoGroupByKey attempt to merge data where there are related keys in the two datasets (JOIN)
  - GroupByKeys: transform for processing collections of key/value pairs
  
**Windows:**
stream processing aggregation time ranges (the time range to aggregate over in stream data)
By default unbounded sets are assigned to the global window
  - Global Window: -infinity to +infinity / Contains All Data
  - Fixed Time Windows / Tumbling Windows: Can't Overlap
  - Sliding Windows / Hopping Windows: Can Overlap
  - Session Windows: Event Based Windows
  - Watermark: when data is expected to arrive, anything after is considered late data
  - Triggers: when to show aggregated results for each window, Event Time, Processing Time, Data Driven, Composite

Window Functions: divide unbounded collections into logical components, or windows

**Fusion and Combine Optimization**
Dataflow also automatically optimizes potentially costly operations, such as data aggregations.
  - Fusion - Can combine transformation steps
  - Combine - Performs partial combining locally before the main grouping operation
  - 
To prevent fusion by : 
  - GroupByKey and ungroup. The Dataflow service never fuses ParDo operations across an aggregation.
  - pass your intermediate PCollection as a side input to another ParDo
  - insert a Reshuffle step. Reshuffle prevents fusion

**Pipeline Metrics**
 - job/element_count
 - job/elapsed_time
 - job/elements_produced_count
 - job/system_lag : the maximum duration that an item has been awaiting processing at a pipeline step
 - job/data_watermark_age : the age of the most recent item that's been fully processed by the pipeline

**GCP Service Accounts**: 
**Dataflow Uses:** Dataflow Service Account
**Workers Use**: Controller Service Account

Dataflow Developer Role: Access to create and cancel jobs. However, it does not provide access to view the data

**Commands**
ParDo : element wide operation similar to pandas apply
CoGroupByKey : does GroupByKey only on multiple collections
GroupByKey : process kev-value pairs
Partition : splits elements into smaller collections
Combine : combine elements
reshuffle: redistributes the elements between workers, most useful for adjusting parallelism or preventing coupled failures

--maxNumWorkers : limit processing resources
--update, --jobname : update pipeline while saving the intermediate state data
  - If changing window algorithm than drain and create a new job.

gcloud dataflow jobs drain : Finish existing jobs but don't injest any new data (stream only)
gcloud dataflow jobs cancel : stops processing data
gcloud dataflow jobs cancel --force : use if cancel does not work

coupled failure: where a worker is doing > 1 pardo, a pardo fails, so all outputs must be thrown away.

**Troubleshooting:**
  Dataflow Monitoring Interface: List of jobs, statuses 

Dataflow Job States:
  Running, Not Started, Queued, Cancelling
  Draining : Cancelling but needs to finish something
  Updating, Succeeded, Failed

  - Input data Errors :  Use a try-catch block is correct. output to Pub/Sub, not GCS.
  - If pubsub messages are missing in dataflow, run a fixed dataset through the dataflow pipeline




Before you use a grouping transform such as GroupByKey on an unbounded PCollection, you must do at least one of the following:

  - Set a non-global windowing function. See Setting your PCollection’s windowing function.
  - Set a non-default trigger. This allows the global window to emit results under other conditions, since the default windowing behavior (waiting for all data to arrive) will never occur.




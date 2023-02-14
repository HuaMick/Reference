## Vertex AI / AI Platform**
Unified AI Platform for GCP (AI Platform is the legacy product)
Tensorflow, Scikit Learn, XGBoost


BASIC: lowest cost. 
STANDARD_1 and PREMIUM_1: use multiple worker and parameter servers.
BASIC_GPU and BASIC_TPU: A single worker instance with a single NVIDIA GPU or a master VM and a Cloud TPU
CUSTOM: Own cluster specification

Types of Machines:
  - Primary Replica / Master: manages the others and reports status for the job as a whole (Only 1 allowed)
  - Worker
  - Parameter Servers: store model parameters and coordinate shared model state between the workers
  - Evaluator(s): These replicas can be used to evaluate your model. Tensorflow -> only 1 evaluator allowed

Online Prediction: online prediction when you are making requests in response to application input
Batch Prediction: Batch prediction is ideal for processing accumulated data when you don't need immediate results.

**Services**
  Training, Prediction, Datalabeling Service (Get humans to manually label data)
  AI Platform Notebooks: Jupyter Notebooks
    - Able to Query Bigquery using "Cell Magic"
    

  Deep Learning VM Image: Linux Image with a bunch of ML tools pre-loaded
  Can export metrics to cloud monitoring

**Built-in Algorithms**
With built-in algorithms on AI Platform Training, you can submit your training data, select an algorithm, and let AI Platform Training handle the preprocessing and training for you, without writing any code for a training application.

  - Built-in Image Classification: Built-in image algorithms allow you to train on TPUs with minimal configuration.
  - XGBoost : gradient boosted decision tree
  - TabNet : Deep learning for Tabular Data - Explainable, higher performance - Good for retail, finance, insurace
  - Linear Learner
  - Wide and Deep


**Commands**
  - Traing Locally: gcloud ml-engine local train
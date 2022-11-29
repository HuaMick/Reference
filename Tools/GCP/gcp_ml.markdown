## Approaches to Machine Learning
**Symbolic**
- Decision Trees : Random Forest
- Naive Bayes : Probability
- K Nearest Neighbor : Categorisation
- Support Vector Machine : Categorisation
  
**Nural Networks**
 Activation Function: Non-liniar line/function used to predict
 Deep Nural Network: 
  - More than 3 layers
  - Uses backpropergation, statastic gradient descent to learn weights

 Activation Function:
	Allows for non-linear relationships

 Grandient Descent: 
 	Incrementally decreasing the weight to determining the weight with the least amount of loss.
	Each increment is determined by the learning rate. High learning rate is quicker but might jump over the optimal weight. 

	Batch Gradient Descent: moves the line by using the whole dataset in the calculation 
	Stochastic Gradient Descent: moves the line by useing 1 random sample on each iteration / epoche
	Mini Batch Gradient Descent: Moves the line by using a small random sample on each epoche

	Backpropergation: An efficient way of calculating the gradient of the line  

 **Bayesian neural network**


## Types of Machine Learning
**Unsupervised Learning**
Pattern recognition, Unlabelled datasets
- Association : 
- Clustering : Grouping similar data together
- Anomaly Detection :
- Principal Component Analysis : Identifty the most important attributes

**Supervised Learning**
Learn from examples, Labelled datasets
- Classification : Support Vector Machine, 
- Prediction :
- Regression :

**Reinforcement Learning**
Learn from enviroment, Maximize Reward

## Evaluating ML Model
**Confusion Matrix**
 - False, Positive = Incorrectely Predicted Yes when Answer was No
 - Flase, Negative = Incorrectly Predicted No when Answer was Yes
 - True, Positive = Correctly Predicted Yes
 - True, Negative = Correctly Predicted No

**Model Measures**
  Accuracy: SUM(True Positive, True Negative) / SUM(Total Predictions) 
  Percision: True Positive / SUM(TP, FP)
  Recall: TP / (TP + FN)
  Mean Squared Error: Used for regression

## Machine Learning Techniques
**Feature Engineering:** 
  bucketing: grouping values together
  feature-cross: product of two or more features (light-blue, heavy-red)
	- helps with non-linear relationships
  binary features: turn values into boolean flags (blue -> Is_Blue)
  decompose: break up a feature (20221123 -> year:2022, month:11)
  One-Hot Encoding: map value to a numeric (blue -> 1, red -> 2)
  Normalization: Convert values to a scale (ratios)

**Underfitting**
Model performs poorly on training and test data
- Increase model complexity (^ layers, number of trees, ^ epochs)

**Overfitting:**
Model performs poorly on the test data
- L1 Regularisation - Able to reduce Less Important Features to near zero
- L2 Regularisation - Better when all features have relatiely equal relevance
- Dropout - Randomly mutes notes, better for complex networks
- Cross-validation - resample the training and test dataset

**Bias Error**
Missing relationship
  Anti-Classification : Do not use protected attributes (gender)
  Classification Parity : Checking that predictions for each group are fair
  Calibration :  

**Variance Error**
Fluctuations in the training data

**Optimising Hardware**
  GPU : Graphics Card CPU (can cost more than TPU) -> Good for small to medium datasets
  TPU : Google custom made GPU designed for tensorflow -> Good for large datasets

**Monitoring**
Cloud Monitoring Alerts: Traffic Patterns, Errors, Latency, Rescource Utilisation

Look for:
  - Data Skew : Changes in data overtime
  - Changes in dependancies : Upstream data changes
  - 

## Google ML Services
Cloud Auto ML : For people with limited ML experience

AI Platform : Tensorflow, Scikit Learn, XGBoost
  Training Service
  Prediction Service
  Datalabeling Service: Get humans to manually label data
  AI Platform Notebooks: Jupyter Notebooks
  Deep Learning VM Image: Linux Image with a bunch of ML tools pre-loaded
  Can export metrics to cloud monitoring

Kubeflow : Kuberbetes ML Toolkit
Dataproc + Spark ML
  MLLib

BigQuery ML : SQL ML functions
  BigQuery ML requires a large amount of data to make accurate models.
  Supports:
  - Linear Regression
  - Binary and multiclass logistic regression
  - K-means Clustering
  - Timeseries forecast
  - Matrix factorisation
  - Boosted Tree and XGBoost
  - Tensorflow
  - AutoML Tables

  Commands:
  CREATE MODEL
  ML.EVALUATE
  ML.PREDICT




**BASIC:** lowest cost. 
**STANDARD_1 and PREMIUM_1:** use multiple worker and parameter servers.

**Online Predictions:** optimized to run your data through hosted models with as little latency as possible. You send small batches of data to the service and it returns your predictions in the response.

**Batch Predictions:** Batch predictions are used for larger loads and more complex models.



### ML Fundamentals

**Training:** minimum of 10 training documents per label, but ideally 100 times more documents for the most common label than for the least common label


#### Types of Analysis

**Entity Analysis**
Inspects the given text for known entities (proper nouns such as public figures, landmarks, etc.)
Available via Google Natural Language API
**Sentiment Analysis**
Classifies customer sentiment using customer feedback
Available via Google Natural Language API

### Vertex AI
Unified AI Platform for GCP

#### Training Cluster

**Primary replica:** Exactly one replica is designated the primary replica. This task manages the others and reports status for the job as a whole.

**Worker(s):** One or more replicas may be designated as workers. These replicas do their portion of the work as you designate in your job configuration.

**Parameter server(s):** If supported by your ML framework, one or more replicas may be designated as parameter servers. These replicas store model parameters and coordinate shared model state between the workers.

**Evaluator(s):** If supported by your ML framework, one or more replicas may be designated as evaluators. These replicas can be used to evaluate your model. If you are using TensorFlow, note that TensorFlow generally expects that you use no more than one evaluator.

 **Data -> Feature Engineering -> Model Architecture**

**Hyper Parameters**
Epoch : The number of passes a training dataset takes around an algorithm


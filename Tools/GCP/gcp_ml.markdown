## Google Cloud Platform Machine Learning Reference


**Cloud TPU** is the custom-designed machine learning ASIC that powers Google products like Translate, Photos, Search, Assistant, and Gmail.

### AI Platform

**BASIC:** lowest cost. 
**STANDARD_1 and PREMIUM_1:** use multiple worker and parameter servers.

**Online Predictions:** optimized to run your data through hosted models with as little latency as possible. You send small batches of data to the service and it returns your predictions in the response.

**Batch Predictions:** Batch predictions are used for larger loads and more complex models.



### ML Fundamentals

**Training:** minimum of 10 training documents per label, but ideally 100 times more documents for the most common label than for the least common label

**Overfitting:**
- L1 Regularisation - Able to reduce Less Important Features to near zero
- L2 Regularisation - Better when all features have relatiely equal relevance
- Dropout - Randomly mutes notes, better for complex networks



**Confusion Matrix** : 
 - False, Positive = Incorrectely Predicted Yes when Answer was No
 - Flase, Negative = Incorrectly Predicted No when Answer was Yes
 - True, Positive = Correctly Predicted Yes
 - True, Negative = Correctly Predicted No

#### Types of Analysis

**Entity Analysis**
Inspects the given text for known entities (proper nouns such as public figures, landmarks, etc.)
Available via Google Natural Language API
**Sentiment Analysis**
Classifies customer sentiment using customer feedback
Available via Google Natural Language API





### Supervised Learning
Uses labelled datasets where AI will make a prediction

**Classification**

**Regression**

### Unsupervised Learning
Unlabelled datasets where AI uses pattern recognition

Clustering : Grouping similar data together

**Association**

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


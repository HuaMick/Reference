## Machine Learning

**TFRecords** : These are tensorflow records, file format / serialization of structured data
**Root Mean Square** : It indicates the absolute fit of the model to the data
**Serialization** : Saving a model so it can be transferred or put into production

**Types of Machine Learning**
Unsupervised Learning:
Pattern recognition, Unlabelled datasets
  - Association Rules: Measures the co-occurance of items (what items are most frequently bought together)
  - Clustering : Grouping similar data together
  - Anomaly Detection :
  - Principal Component Analysis : Identifty the most important attributes
  - Matrix Factorisation : used for recommendation systems

Supervised Learning:
Learn from examples, Labelled datasets
  - Classification : Support Vector Machine, 
  - Prediction :
  - Regression :

Reinforcement Learning:
Learn from enviroment, Maximize Reward

**Symbolic**
  - Decision Trees / XGBoost : Random Forest
  - Naive Bayes : Probability
  - K Nearest Neighbor : Categorisation
  - Support Vector Machine : Categorisation

**Nural Networks**
  - Uses backpropergation, gradient descent to learn weights
  - Each iteration updates biases and weights

Learning rate: High learning rate is quicker but might jump over the optimal weight. 
Activation Function: Allows for non-linear relationships
Backpropergation: An efficient way of calculating the gradient of the line  
Deep Nural Network: More than 3 layers

Deep Nural Networks: These are good at generalisation
Wide NUral Networks: These are good at memorization

Grandient Descent
Incrementally decreasing the weight to determining the weight with the least amount of loss.
  - Batch Gradient Descent: moves the line by using the whole dataset in the calculation 
  - Stochastic Gradient Descent: moves the line by useing 1 random sample on each iteration / epoche
  - Mini Batch Gradient Descent: Moves the line by using a small random sample on each epoche

convolutional neural network (CNN):
  - Pooling layers, which downsample the image data extracted by the convolutional layers
  - Dense / Fully Connected layers, which perform classification on the features extracted by the convolutional layers

Bayesian neural network

**Feature Engineering**
bucketing: grouping values together
binary features: turn values into boolean flags (blue -> Is_Blue)
decompose: break up a feature (20221123 -> year:2022, month:11)
One-Hot Encoding: map value to a numeric (blue -> 1, red -> 2)
Normalization: Convert values to a scale (ratios)

Not Enough Features
  - Feature-cross: product of two or more features (light-blue, heavy-red) - helps with non-linear relationships
  
Dimensionality reduction / Too Many Features
  - Principal component analysis : analyzing large datasets containing a high number of dimensions/features per observation
  - Linear discreminant analysis
  - canonical correlation analysis
  - non-negative matrix factorization


## Machine Learning Techniques
**Feature Engineering:** 
  bucketing: grouping values together
  feature-cross: product of two or more features (light-blue, heavy-red)
	- helps with non-linear relationships
  binary features: turn values into boolean flags (blue -> Is_Blue)
  decompose: break up a feature (20221123 -> year:2022, month:11)
  One-Hot Encoding: map value to a numeric (blue -> 1, red -> 2)
  Normalization: Convert values to a scale (ratios)
  sparse vectors: vectors that represent a feature [0,0,0,1], [0,1,0] (count = options, 1 = value)

**Underfitting**
Model performs poorly on training and test data
- Increase model complexity (^ layers, number of trees, ^ epochs)

**Overfitting:**
Model performs poorly on the test data
- L1 Regularisation : Penalises High Weights -> Reduce Less Important Features to near zero 
  (Hyperparameter = Alpha Parameter)

- L2 Regularisation : Penalises High Weights -> Better when all features have relatiely equal relevance 
  (Hyperparameter = Alpha Parameter)

- Dropout : Randomly mutes notes -> better for complex networks
- Cross-validation : resample the training and test dataset
- Reduce number of features : If model unable to find pattern will just memorise
- Increase training dataset and/or increase test dataset

**Bias Error**
Missing relationship
  Anti-Classification : Do not use protected attributes (gender)
  Classification Parity : Checking that predictions for each group are fair
  Calibration :  

**Variance Error**
Fluctuations in the training data
  - Low Variance is desired
  - High Variance will cause small changes to lead to large differences in predictions

**Optimising Hardware**
  GPU : Graphics Card CPU (can cost more than TPU) -> Good for small to medium datasets
  TPU : Google custom made GPU designed for tensorflow -> Good for large datasets

**Monitoring**
Cloud Monitoring Alerts: Traffic Patterns, Errors, Latency, Rescource Utilisation

Look for:
  - Data Skew : Changes in data overtime
  - Changes in dependancies : Upstream data changes

**Improve training Speed**
- Dimension Reduction
- Principal Component Analysis
- Combine Features

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

**Hyper Parameters**
Epoch : The number of passes a training dataset takes around an algorithm

**Improve training Speed**
- Dimension Reduction
- Principal Component Analysis
- Combine Features

**Cross Validate**
- train model on subsets of the data.
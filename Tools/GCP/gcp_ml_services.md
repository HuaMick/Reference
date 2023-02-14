## Google ML Services

**What-If Tool**
  - tool for understanding the behaviour of models
  - Support for Jupyter, VertexAI notebooks

**Kubeflow**
Managed service for container management using kubernetes 

**Cloud Auto ML**
For people with limited ML experience

**Data -> Feature Engineering -> Model Architecture**

**BigQuery ML**
Native ML in bigquery using SQL

- BigQuery ML requires a large amount of data to make accurate models.

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
  - CREATE MODEL
  - ML.EVALUATE
  - ML.PREDICT : Used to predict outcomes using the model (regression, k-means, PCA, autoencode, tensorflow)
  - ML.RECOMMEND : For Matrix Factorisation


**AutoML**
Machine Learning models with out the need for code
  
  AutoML Vision / Vision AI
  start with a training set as little as a dozen photo samples and AutoML takes care of the rest
    - AutoML Vision allows you to sort the images by how “confused” the model is, by the true label and its predicted label. Look through these images and make sure they’re labeled correctly.
    - Consider removing labels altogether if you don’t have enough training images.
    - Target at least 1000 images per label

**Google Natural Language API**
  - Sentiment Analysis : inspects the given text and identifies the prevailing emotional opinion
  - Entity Analysis : inspects the given text for known entities
  - Syntactic Analysis : breaks up the given text into a series of sentences and tokens (generally, words)
  - Entity Sentiment Analysis : combines both entity analysis and sentiment analysis and attempts to determine the sentiment (positive or negative) expressed about entities within the text.
  - Content Classification : analyzes a document and returns a list of content categories that apply to the text found in the document. To classify the content in a document, call the classifyText method.

**Cloud Vision API / Vision AI**
This is used for image recognition

**Cloud Video Intelligene API / Video AI**
Cloud Video Intelligence can be used to perform content moderation on videos

**Speech to Text API**
Transcribe speech audio to text
  - 16,000 Hz or Higher
  - Avoid Resampling the Data
  
	- synchronous mode : recognized text for short audio (less than ~1 minute) in the response as soon as it is processed
	- asynchronous mode : for longer text, waits for complete text before returning result

**Dialog Flow**
GCP Chatbot service
  - can also process voice

**DocumentAI**
Process documents
  - Ensure a high level of accuracy with Google's AI and Human-in-the-Loop (HITL) reviews
  - Digitize Text from documents
  - Process Documents
  - content classification, entity extraction, and advanced searching

**Dataproc Hub**
The Dataproc Hub lets you to take advantage of AI Platform Notebooks and Dataproc to run interactive ML and data processing tasks at scale using Jupyter notebooks and the Hadoop and Spark ecosystem.
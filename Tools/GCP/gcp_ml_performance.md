## Machine Learning Measuring Performance

**Confusion Matrix**
 - False, Positive = Incorrectely Predicted Yes when Answer was No
 - Flase, Negative = Incorrectly Predicted No when Answer was Yes
 - True, Positive = Correctly Predicted Yes
 - True, Negative = Correctly Predicted No

**Model Measures**
  Accuracy: SUM(True Positive, True Negative) / SUM(Total Predictions) -> used for classification models
  Percision: True Positive / SUM(TP, FP) - Use when most of the outputs are positive
  Recall: TP / (TP + FN) - Use when most of the outputs are negative
  Mean Squared Error: Used for regression

**Evaluation Metrics**
  - F-score: harmonic mean of precision and recall and is often used to measure the overall performance of classification models
  - Root mean squared error and mean squared error: used to evaluate regression models


**Tensor Processing Unit**
  - Requires GPU Kernel Support for custom ops
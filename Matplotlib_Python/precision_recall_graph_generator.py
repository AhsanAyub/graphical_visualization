# Importing the libraries
import pandas as pd
import numpy as np

#importing the data set
dataset = pd.read_csv('prediction_results.csv')

Y_test = dataset.iloc[:, 0].values
Y_Pred = dataset.iloc[:, 1].values

# Making the cufusion Matrix
from sklearn.metrics import confusion_matrix
cm = confusion_matrix(Y_test, Y_Pred)
print("Confusion Matrix:\n", cm)

# Knowing accuracy result
from sklearn.metrics import accuracy_score
print("Accuracy: ", accuracy_score(Y_test, Y_Pred))

# Measiring F1 Score
from sklearn.metrics import f1_score
print("F1: ", f1_score(Y_test, Y_Pred, average='binary'))

# Measuring precision score
from sklearn.metrics import precision_score
print("Precison: ", precision_score(Y_test, Y_Pred, average='binary'))

# Measuring recall score
from sklearn.metrics import recall_score
print("Recall: ", recall_score(Y_test, Y_Pred, average='binary'))

# Measing average precision score
from sklearn.metrics import average_precision_score
average_precision = average_precision_score(Y_test, Y_Pred)
print('Average precision-recall score: {0:0.2f}'.format(average_precision))

# Drawing the graph
from sklearn.metrics import precision_recall_curve
import matplotlib.pyplot as plt
from sklearn.utils.fixes import signature

precision, recall, _ = precision_recall_curve(Y_test, Y_Pred)

# In matplotlib < 1.5, plt.fill_between does not have a 'step' argument
step_kwargs = ({'step': 'post'}
               if 'step' in signature(plt.fill_between).parameters
               else {})
plt.step(recall, precision, color='black', alpha=0.5,
         where='post')
plt.fill_between(recall, precision, alpha=0.6, color='black', **step_kwargs)
plt.xlabel('Recall',fontsize=20)
plt.ylabel('Precision',fontsize=20)
plt.ylim([0.0, 1.05])
plt.xlim([0.0, 1.0])
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.title('<title>\nPrecision-Recall curve: AP={0:0.2f}'.format(
          average_precision), fontsize=20)
#importing the library
import numpy as np
import matplotlib.pyplot as plt

def plot_confusion_matrix(cm,
                          target_names,
                          title="Confusion Matrix",
                          cmap=None,
                          normalize=True):
    import itertools

    accuracy = np.trace(cm) / float(np.sum(cm))
    misclass = 1 - accuracy

    if cmap is None:
        cmap = plt.get_cmap('Greys')

    plt.figure(figsize=(10, 8))
    #plt.imshow(cm, interpolation='nearest', cmap=cmap)
    plt.imshow(cm, cmap=cmap)
    plt.title(title, fontsize=22, fontweight='bold')
    #plt.colorbar()

    if target_names is not None:
        tick_marks = np.arange(len(target_names))
        plt.xticks(tick_marks, target_names, rotation=45, fontsize=22)
        plt.yticks(tick_marks, target_names, fontsize=20)
        plt.ylabel("Actual Class",fontsize=20)

    if normalize:
        cm = cm.astype('float') / cm.sum(axis=1)[:, np.newaxis]


    thresh = cm.max() / 1.5 if normalize else cm.max() / 2
    for i, j in itertools.product(range(cm.shape[0]), range(cm.shape[1])):
        if normalize:
            plt.text(j, i, "{:0.4f}".format(cm[i, j]),
                     horizontalalignment="center",
                     fontsize=26,
                     weight='bold',
                     color="white" if cm[i, j] > thresh else "black")
        else:
            plt.text(j, i, "{:,}".format(cm[i, j]),
                     horizontalalignment="center",
                     fontsize=26,
                     weight='bold',
                     color="white" if cm[i, j] > thresh else "black")


    plt.tight_layout()
    plt.xlabel('Predicted Class\nAccuracy={:0.3f}; Misclass={:0.3f}'.format(accuracy, misclass),fontsize=20)
    plt.show()
    
plot_confusion_matrix(cm = np.array([[9309,788],
                                    [951,13386]]), 
                      normalize    = False,
                      target_names = ['0', '1'],
                      title        = "<title>")
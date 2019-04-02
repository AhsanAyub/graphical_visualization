dt_tpr = 0.69;
dt_fpr = 0.06;

nb_tpr = 0.43;
nb_fpr = 0;

ann_tpr = 0.79;
ann_fpr = 0.15;

% ---- Bigram -----

dt1_tpr = 0.91;
dt1_fpr = 0.08;

nb1_tpr = 1.0;
nb1_fpr = .74;

ann1_tpr = 0.98;
ann1_fpr = 0.02;

rf1_tpr = 0.94;
rf1_fpr = 0.07;


x=[dt_fpr nb_fpr ann_fpr dt1_fpr nb1_fpr ann1_fpr rf1_fpr];
y=[dt_tpr nb_tpr ann_tpr dt1_tpr nb1_tpr ann1_tpr rf1_tpr];
scatter(x, y, 'filled');
axis([0 1 0 1]);

text(dt_fpr, dt_tpr, 'A', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(nb_fpr, nb_tpr, 'B', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(ann_fpr, ann_tpr, 'C', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(dt1_fpr, dt1_tpr, 'D', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(nb1_fpr, nb1_tpr, 'E', 'horizontal','right', 'vertical','top', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(ann1_fpr, ann1_tpr, 'F', 'horizontal','left', 'vertical','top', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(rf1_fpr, rf1_tpr, 'G', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');

box on;
grid on;

ylabel('True Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('False Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
ax = gca;
ax.FontSize = 16; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
title('ROC Space using Bag of Words Model','FontSize',24,'FontWeight','bold','FontName','Times New Roman');
dim = [0.4 0.5 0.3 0.3];
str = {'A = Decision Tree (n=1)', 'B = Naive Bayes (n=1)', 'C = Artificial Neural Network (n=1)', 'D = Decision Tree (n=2)', 'E = Naive Bayes (n=2)', 'F = Artificial Neural Network (n=2)', 'G = Random Forest (n=2)'};
annotation('textbox',dim,'String',str,'FitBoxToText','on','FontSize',20, 'FontWeight', 'bold', 'FontName','Times New Roman');
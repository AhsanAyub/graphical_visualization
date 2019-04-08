%------ BOW (n=1) -----

dt_tpr = 0.7017507149333891;
dt_fpr = 0.06;

nb_tpr = 0.04722047848224873;
nb_fpr = 0;

rf_tpr = 0.7633241758241758;
rf_fpr = 0.03;

ann_tpr = 0.836411149825784;
ann_fpr = 0.15;

% ---- Bigram -----

dt1_tpr = 0.9336681314082445;
dt1_fpr = 0.08;

nb1_tpr = 1.0;
nb1_fpr = .74;

ann1_tpr = 0.9864982578397212;
ann1_fpr = 0.02;

rf1_tpr = 0.9566157494594406;
rf1_fpr = 0.07;


x=[dt_fpr nb_fpr ann_fpr rf_fpr dt1_fpr nb1_fpr ann1_fpr rf1_fpr];
y=[dt_tpr nb_tpr ann_tpr rf_tpr dt1_tpr nb1_tpr ann1_tpr rf1_tpr];
scatter(x, y, 90, 'filled');
axis([0 1 0 1]);

text(dt_fpr, dt_tpr, 'A', 'horizontal','left', 'vertical','bottom', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(nb_fpr, nb_tpr, 'B', 'horizontal','left', 'vertical','bottom', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(ann_fpr, ann_tpr, 'C', 'horizontal','left', 'vertical','bottom', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(rf_fpr, rf_tpr, 'D', 'horizontal','left', 'vertical','bottom', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');

text(dt1_fpr, dt1_tpr, 'E', 'horizontal','left', 'vertical','top', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(nb1_fpr, nb1_tpr, 'F', 'horizontal','right', 'vertical','top', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(ann1_fpr, ann1_tpr, 'G', 'horizontal','left', 'vertical','top', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
text(rf1_fpr, rf1_tpr, 'H', 'horizontal','left', 'vertical','bottom', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');

box on;
grid on;

ylabel('True Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('False Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
ax = gca;
ax.FontSize = 16; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
title('ROC Space for both BOW (n=1) and BOW (n=2)','FontSize',24,'FontWeight','bold','FontName','Times New Roman');
dim = [0.4 0.5 0.3 0.3];
str = {'A = Decision Tree (n=1)', 'B = Naive Bayes (n=1)', 'C = Artificial Neural Network (n=1)', 'D = Random Forest (n=1)', 'E = Decision Tree (n=2)', 'F = Naive Bayes (n=2)', 'G = Artificial Neural Network (n=2)', 'H = Random Forest (n=2)'};
annotation('textbox',dim,'String',str,'FitBoxToText','on','FontSize',20, 'FontWeight', 'bold', 'FontName','Times New Roman');
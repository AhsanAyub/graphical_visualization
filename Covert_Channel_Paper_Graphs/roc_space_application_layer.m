lr_tpr = 9222 / (9222 + 0);
lr_fpr = 1428 / (9222 + 1428);

knn_tpr = 1131 / (1131 + 0);
knn_fpr = 142 / (1131 + 142);

j48_tpr = 1137 / (1137 + 0);
j48_fpr = 136 / (1137 + 136);

x=[lr_fpr knn_fpr j48_fpr];
y=[lr_tpr knn_tpr j48_tpr];
scatter(x, y, 'filled');
axis([0 .5 .7 1]);

text(lr_fpr, lr_tpr, 'A', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(knn_fpr, knn_tpr, 'B', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(j48_fpr, j48_tpr, 'C', 'horizontal','right', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');

box on;
grid on;

ylabel('True Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('False Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
ax = gca;
ax.FontSize = 16; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
%title('ROC Space for Application Layer (DNS)','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
dim = [0.2 0.5 0.3 0.3];
str = {'A = Logistic Regression', 'B = K-NN', 'C = Decision Tree'};
annotation('textbox',dim,'String',str,'FitBoxToText','on','FontSize',20,'FontWeight', 'bold','FontName','Times New Roman');
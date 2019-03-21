lr_tpr = 12232 / (12232 + 4543);
lr_fpr = 583 / (12232 + 583);

svm_lk_tpr = 12217 / (12217 + 2945);
svm_lk_fpr = 598 / (12217 + 598);

svm_gk_trp = 12762 / (12762 + 8);
svm_gk_fpr = 53 / (12762 + 53);

x=[lr_fpr svm_lk_fpr svm_gk_fpr];
y=[lr_tpr svm_lk_tpr svm_gk_trp];
scatter(x, y, 'filled');
axis([0 1 0 1]);

text(lr_fpr, lr_tpr, 'A', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(svm_lk_fpr, svm_lk_tpr, 'B', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');
text(svm_gk_fpr, svm_gk_trp, 'C', 'horizontal','left', 'vertical','bottom', 'FontSize',22,'FontWeight','bold','FontName','Times New Roman');

box on;
grid on;

ylabel('True Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('False Positive Rates', 'FontSize',20,'FontWeight','bold','FontName','Times New Roman');
ax = gca;
ax.FontSize = 16; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
%title('ROC Space for Network Layer (IPv4)','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
dim = [0.2 0.5 0.3 0.3];
str = {'A = Logistic Regression', 'B = SVM (Linear Kernel)', 'C = SVM (Gaussian Kernel)'};
annotation('textbox',dim,'String',str,'FitBoxToText','on','FontSize',20, 'FontWeight', 'bold', 'FontName','Times New Roman');
lr_tpr = 8036 / (8036 + 5504);
lr_fpr = 4551 / (8036 + 4551);

svm_lk_tpr = 12587 / (12587 + 7807);
svm_lk_fpr = 0 / (12587 + 0);

svm_gk_trp = 12568 / (12568 + 219);
svm_gk_fpr = 19 / (12568 + 19);

x=[lr_fpr svm_lk_fpr svm_gk_fpr];
y=[lr_tpr svm_lk_tpr svm_gk_trp];
scatter(x, y, 'filled');
axis([0 1 0 1]);

text(lr_fpr, lr_tpr, 'A', 'horizontal','left', 'vertical','bottom');
text(svm_lk_fpr, svm_lk_tpr, 'B', 'horizontal','left', 'vertical','bottom');
text(svm_gk_fpr, svm_gk_trp, 'C', 'horizontal','left', 'vertical','bottom');

box on;
grid on;

ylabel('True Positive Rates', 'FontSize',10,'FontWeight','bold','FontName','Times New Roman');
xlabel('False Positive Rates', 'FontSize',10,'FontWeight','bold','FontName','Times New Roman');
title('ROC Space for Transport Layer (TCP)','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
dim = [0.2 0.5 0.3 0.3];
str = {'A = Logistic Regression', 'B = SVM (Linear Kernel)', 'C = SVM (Gaussian Kernel)'};
annotation('textbox',dim,'String',str,'FitBoxToText','on','FontSize',10,'FontName','Times New Roman');
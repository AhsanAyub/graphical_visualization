Y_as = [ 99.15 99.23 99.88 98.59; 72.27 66.53 100 49.85; 64.29 66.68 68.86 64.64 ] ;
X_as = categorical({'SVM (Gaussian)', 'SVM (Linear Kernel)', 'Logistic Regression',});
HB = bar(X_as , Y_as , 'group');
%a = (1:size(Y_as,1)).';
%x = [a-0.25 a a+0.25 a+.5];
%for k=1:size(Y_as,1)
%    for m = 1:size(Y_as,2)
%        text(x(k,m),Y_as(k,m),num2str(Y_as(k,m),'%0.2f'),...
%            'HorizontalAlignment','center',...
%            'VerticalAlignment','bottom')
%    end
%end
l = cell(1,4);
l{1}='Accuracy'; l{2}='F1'; l{3}='Precision'; l{4}='Recall';    
legend(HB,l);
ylabel('Percentage','FontSize',10,'FontWeight','bold','FontName','Times New Roman');
xlabel('Classification Techniques','FontSize',10,'FontWeight','bold','FontName','Times New Roman');
grid on;
box on;
title('Comparison of Evaluation for Transport Layer (TCP)','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
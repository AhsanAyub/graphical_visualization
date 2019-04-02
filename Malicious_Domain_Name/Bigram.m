Y_as = [ 92.88 93.9 94.44 93.37; 69.5 79.37 65.79 100; 94.66 95.46 95.26 95.66 ; 98.39 98.63 98.61 98.65] ;
X_as = categorical({'Decision Tree', 'Naive Bayes', 'Random Forest','ANN'});
HB = bar(X_as , Y_as , 'group');
l = cell(1,4);
l{1}='Accuracy'; l{2}='F1'; l{3}='Precision'; l{4}='Recall';    
legend(HB,l);
ylabel('Percentage','FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('Classification Techniques','FontSize',20,'FontWeight','bold','FontName','Times New Roman');
grid on;
box on;
ax = gca;
ax.FontSize = 20; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
title('Comparison of Evaluation using Bigram','FontSize',24,'FontWeight','bold','FontName','Times New Roman');

%x1=[1 3  5];x2=[2 4 6];
%y1=[3  1  5];y2=[4  3  3]
%bar_widh=0.2;
%bar(x1,y1,bar_widh,'r');hold on; bar(x2,y2,bar_widh,'g')
%hold on;plot(x1,y1,'b');hold on; plot(x2,y2,'m')
Y_as = [ 92.88 93.9 94.44 93.37; 69.5 79.37 65.79 100; 94.66 95.46 95.26 95.66 ; 98.39 98.63 98.61 98.65] ;
X_as = categorical({'Decision Tree', 'Naive Bayes', 'Random Forest','ANN'});
HB = bar(X_as , Y_as , 'group');
l = cell(1,4);
l{1}='Accuracy'; l{2}='F1'; l{3}='Precision'; l{4}='Recall';    
legend(HB,l);
ylim([40 100])
ylabel('Percentage','FontSize',20,'FontWeight','bold','FontName','Times New Roman');
xlabel('Classification Techniques','FontSize',20,'FontWeight','bold','FontName','Times New Roman');
grid on;
box on;
ax = gca;
ax.FontSize = 20; 
ax.FontWeight = 'bold';
ax.FontName = 'Times New Roman';
title('Comparison of Evaluation using BOW (n=2)','FontSize',24,'FontWeight','bold','FontName','Times New Roman');
rowNames = "w" + (1:10);

% table of prescribed proportions
T = readtable("wafer.txt");

% Row names
T.Properties.RowNames = rowNames;

columnNames = T.Properties.VariableNames;

% Parallel coordinates
parallelplot(T);
title('Parallel Coordinates Plot of Wafer Properties');

% Plot Description:
% There are two wafers with same length and thickness 
% but different widths.

%% Scatter Plot Matrix
% scatterplot matrix with univariate boxplot
plotmatrix(T{:, :});
hold on;

% univariate boxplot
boxplot(T{:, :}, 'Labels', columnNames, 'Color', [0.8 0.8 0.8]);
hold off;
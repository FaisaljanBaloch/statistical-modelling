rowNames = "w" + (1:10);

% table of prescribed proportions
T = readtable("wafer.txt");

% Row names
T.Properties.RowNames = rowNames;

columnNames = T.Properties.VariableNames;

% Parallel coordinates
parallelplot(T);

% Plot Description:
% Goes Here
% Specify the path to the Excel file
filePath = 'G:\2018\Documents\papers\Portfolio finance\AlphaFoldD\Foreignreserves.xlsx';

% Import data as a table
data = readtable(filePath);

% Import data from Sheet4 as a table
data = readtable(filePath, 'Sheet', 'Sheet4'); % If sheet name has spaces, use exact name

% Create a variable called REER from the second column of the table
REER = data{:, 2};

% Create a variable called Brent from the third column of the table
Brent = data{:, 4};
WTI = data{:, 3};

[imf,residual] = AlphaFoldD(REER);
% This names each IMF
imf1 = imf(:,1);
imf2 = imf(:,2);
imf3 = imf(:,3);
imf4 = imf(:,4);
imf5 = imf(:,5);
%% This plots the graphs

% the 5 is for the number of rows
% the 1 is the number of columns
% the last digit (1,2,3,..,etc.) refers to the number of the figure
subplot(511)
plot(imf1)
title('IMF 1')
subplot(512)
plot(imf2)
title('IMF 2')
subplot(513)
plot(imf3)
title('IMF 3')

subplot(514)
plot(imf4)
title('IMF 4')

subplot(515)
plot(imf5)
title('IMF 5')
%%
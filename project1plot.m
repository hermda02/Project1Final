%% FYS4150 - Project 1 

close all
clc

% variables are written to txt file in c++ program, imported using import 
% data in matlab and stored in the workspace project1.mat

load('/Users/Karianne/Documents/UiO/FYS4150/project1/data/project1.mat')

%Create variables from the imported data arrays
%X-axis - grid points on interval of x
x10 = testfile10pt(:,1);        % n = 10^1
x100 = testfile100pt(:,1);      % n = 10^2
x1000 = testfile1000pt(:,1);    % n = 10^3

%Exact solution
ux10 = testfile10pt(:,2);
ux100 = testfile100pt(:,2);
ux1000 = testfile1000pt(:,2);

%Gaussian elimination
vx10 = testfile10pt(:,3);
vx100 = testfile100pt(:,3);
vx1000 = testfile1000pt(:,3);

%LU decomposition
lu10 = project1d_10(:,1);
lu100 = project1d_100(:,1);
lu1000 = project1d_1000(:,1);

%Relative error
xr101 = x101(:,1);      % n = 10^1 grid points
xr102 = x102(:,1);      % n = 10^2 grid points
xr103 = x103(:,1);      % n = 10^3 grid points
xr104 = x104(:,1);      % n = 10^4 grid points
xr105 = x105(:,1);      % n = 10^5 grid points
xr106 = x106(:,1);      % n = 10^6 grid points
xr107 = x107(:,1);      % n = 10^7 grid points

re101 = log10RelativeError101(:,1);
re102 = log10RelativeError102(:,1);
re103 = log10RelativeError103(:,1);
re104 = log10RelativeError104(:,1);
re105 = log10RelativeError105(:,1);
re106 = log10RelativeError106(:,1);
re107 = log10RelativeError107(:,1);


%% Gaussian n = 10^1

figure
hold on
grid on
grid minor
%title('Gaussian elimination: n = 10^1','Fontsize',16)

plot(x10,ux10,'Displayname','exact')
plot(x10,vx10,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show
lgd.FontSize = 14;


%% Gaussian n = 10^2

figure
hold on
grid on
grid minor
%title('Gaussian elimination: n = 10^2','Fontsize',16)

plot(x100,ux100,'Displayname','exact')
plot(x100,vx100,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show


%% Gaussian n = 10^3

figure
hold on
grid on
grid minor
%title('Gaussian elimination: n = 10^3','Fontsize',16)

plot(x1000,ux1000,'Displayname','exact')
plot(x1000,vx1000,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show

%% LU n = 10^1

figure
hold on
grid on
grid minor
%title('LU decomposition: n = 10^1','Fontsize',16)

plot(x10,ux10,'Displayname','exact')
plot(x10,lu10,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show
lgd.FontSize = 14;



%% LU n = 10^2

figure
hold on
grid on
grid minor
%title('LU decomposition: n = 10^2','Fontsize',16)

plot(x100,ux100,'Displayname','exact')
plot(x100,lu100,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show
lgd.FontSize = 14;



%% LU n = 10^3

figure
hold on
grid on
grid minor
%title('LU decomposition: n = 10^3','Fontsize',16)

plot(x1000,ux1000,'Displayname','exact')
plot(x1000,lu1000,'Displayname','approximated')

xlabel('x','Fontsize',12)
ylabel('d^2 f(x)/dx^2','Fontsize',12)

legend show
lgd.FontSize = 14;


%% Relative error n = 10^1

figure
hold on
grid on
grid minor

plot(xr101,re101);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin1 = find(min(re101) == re101); 
x1min = xr101(indexmin1); 
y1min = re101(indexmin1);

%min1 = ['Minimum = ',num2str(y1min)];
%text(x1min,y1min,min1,'HorizontalAlignment','left'); %write it on the
%graph at the min-point

indexmax1 = find(max(re101) == re101); 
x1max = xr101(indexmax1); 
y1max = re101(indexmax1);

% max1 = ['Maximum = ',num2str(y1max)];
% text(x1max,y1max,max1,'HorizontalAlignment','left');

%% Relative error n = 10^2

figure
hold on
grid on
grid minor

plot(xr102,re102);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin2 = find(min(re102) == re102); 
y2min = re102(indexmin2);               % finding minimum value of the relative error

indexmax2 = find(max(re102) == re102); 
y2max = re102(indexmax2);               % finding maximum value of the relative error



%% Relative error n = 10^3

figure
hold on
grid on
grid minor

plot(xr103,re103);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin3 = find(min(re103) == re103); 
y3min = re103(indexmin3);

indexmax3 = find(max(re103) == re103); 
x3max = xr103(indexmax3); 
y3max = re103(indexmax3);


%% Relative error n = 10^4

figure
hold on
grid on
grid minor

plot(xr104,re104);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin4 = find(min(re104) == re104); 
y4min = re104(indexmin4);

indexmax4 = find(max(re104) == re104); 
x4max = xr104(indexmax4); 
y4max = re104(indexmax4);


%% Relative error n = 10^5

figure
hold on
grid on
grid minor

plot(xr105,re105);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin5 = find(min(re105) == re105); 
y5min = re105(indexmin5);

indexmax5 = find(max(re105) == re105); 
x5max = xr105(indexmax5); 
y5max = re105(indexmax5);


%% Relative error n = 10^6

figure
hold on
grid on
grid minor

plot(xr106,re106);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin6 = find(min(re106) == re106); 
y6min = re106(indexmin6);

indexmax6 = find(max(re106) == re106); 
x6max = xr106(indexmax6); 
y6max = re106(indexmax6);


%% Relative error n = 10^7 vs x

figure
hold on
grid on
grid minor

plot(xr107,re107);

xlabel('x','Fontsize',12)
ylabel('Relative error \epsilon','Fontsize',12)

indexmin7 = find(min(re107) == re107); 
y7min = re107(indexmin7);

indexmax7 = find(max(re107) == re107); 
x7max = xr107(indexmax7); 
y7max = re107(indexmax7);


%%

miny = [y1min y2min y3min y4min y5min y6min y7min];
%maxy = [y1max y2max y3max y4max y5max y6max y7max];

n = [10 100 1000 10000 100000 1000000 10000000];
h = log10(1./(n+1));


figure
hold on 
grid on 
grid minor

plot(h,miny,'Displayname','Relative error')

xlabel('log_{10} (h)');
ylabel('log_{10} (\epsilon)');

legend show
ldg.Fontsize = 14;








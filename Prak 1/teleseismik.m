clc; clear all;
a=load('event102_ME05_07211504.mat');
b=load('event102_ME06_07211504.mat');
c=load('event102_ME07_07211504.mat');
flow=0.05;
fhigh=4;
figure(1)
subplot(3,1,1)
plot(a.vert)
subplot(3,1,2)
plot(b.vert)
subplot(3,1,3)
plot(c.vert)

figure(2)
subplot(3,1,1)
plot(a.North)
subplot(3,1,2)
plot(b.North)
subplot(3,1,3)
plot(c.North)


figure(3)
subplot(3,1,1)
plot(a.East)
subplot(3,1,2)
plot(b.East)
subplot(3,1,3)
plot(c.East)

[Z,V] = butter(2,[flow/(2/0.01) fhigh/(2/0.01)]);
datZ1 = filtfilt(Z,V,a.vert);
datZ2 = filtfilt(Z,V,b.vert);
datZ3 = filtfilt(Z,V,c.vert);

figure(4)
subplot(3,1,1)
plot(datZ1)
subplot(3,1,2)
plot(datZ2)
subplot(3,1,3)
plot(datZ3)




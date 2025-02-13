%% I) a = 1; kp: 0.5 -> 2

Hdes_kp = tf(25,[1,5,0]);

figure
rlocus(Hdes_kp), hold on

kp_interval = 0.5:0.1:2;

rlocus(Hdes_kp,kp_interval,'x'), title('a = 1; kp: 0.5 -> 2')

%% II) kp = 1; a: 0.5 -> 2

Hdes_a = tf([1,5,0],[1,5,25,25]);

figure
rlocus(Hdes_a), hold on

a_interval = 0.5:0.1:2;

rlocus(Hdes_a,a_interval,'x'), title('kp = 1; a: 0.5 -> 2')

%% III) a = 1; kp: 0.5 -> 2

Hdes_kp = tf([4,25],[1,1,0]);

figure
rlocus(Hdes_kp), hold on

kp_interval = 0.5:0.1:2;

rlocus(Hdes_kp,kp_interval,'x'), title('a = 1; kp: 0.5 -> 2')

%% IV) kp = 1; a: 0.5 -> 2

Hdes_a = tf([1,0],[1,4,25]);

figure
rlocus(Hdes_a), hold on

a_interval = 0.5:0.1:2;

rlocus(Hdes_a,a_interval,'x'), title('kp = 1; a: 0.5 -> 2')

%% pentru circuitul prezentat
% am ales R5/R4 = R3/R2 = 1
%% I) R6 = 10, R3 = 10, C2 = 0.01, C1 variabil

C2 = 0.01; R6 = 10; R3 = 10;
C1_interval = 0.01 : 0.1 : 1;
Hdes = tf(1,[R6*R3*C2,R6,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C1_interval,'x');

%% II) R6 = 10, R3 = 10, C2 = 0.1, C1 variabil

C2 = 0.1; R6 = 10; R3 = 10;
C1_interval = 0.01 : 0.1 : 1;
Hdes = tf(1,[R6*R3*C2,R6,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C1_interval,'x');

%% III) R6 = 10, R3 = 10, C2 = 1, C1 variabil

C2 = 1; R6 = 10; R3 = 10;
C1_interval = 0.01 : 0.1 : 1;
Hdes = tf(1,[R6*R3*C2,R6,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C1_interval,'x');

%% IV) R6 = 10, R3 = 10, C1 = 0.01, C2 variabil

C1 = 0.01; R6 = 10; R3 = 10;
C2_interval = 0.01 : 0.1 : 1;
Hdes = tf([R6*C1,1],[R6*R3*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C2_interval,'x');

%% V) R6 = 10, R3 = 10, C1 = 0.1, C2 variabil

C1 = 0.1; R6 = 10; R3 = 10;
C2_interval = 0.01 : 0.1 : 1;
Hdes = tf([R6*C1,1],[R6*R3*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C2_interval,'x');

%% VI) R6 = 10, R3 = 10, C1 = 1, C2 variabil

C1 = 1; R6 = 10; R3 = 10;
C2_interval = 0.01 : 0.1 : 1;
Hdes = tf([R6*C1,1],[R6*R3*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,C2_interval,'x');

%% VII) R3 = 10, C1 = C2 = 0.01, R6 variabil

C1 = 0.01; C2 = 0.01; R3 = 10; 
R6_interval = 1 : 0.1 : 10;
Hdes = tf(1,[R3*C1*C2,C1,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R6_interval,'x');

%% VIII) R3 = 10, C1 = C2 = 0.1, R6 variabil

C1 = 0.1; C2 = 0.1; R3 = 10; 
R6_interval = 1 : 0.1 : 10;
Hdes = tf(1,[R3*C1*C2,C1,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R6_interval,'x');

%% IX) R3 = 10, C1 = C2 = 1, R6 variabil

C1 = 1; C2 = 1; R3 = 10; 
R6_interval = 1 : 0.1 : 10;
Hdes = tf(1,[R3*C1*C2,C1,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R6_interval,'x');

%% X) R6 = 10, C1 = C2 = 0.01, R3 variabil

R6 = 10; C1 = 0.01; C2 = 0.01;
R3_interval = 1: 0.1 : 10;
Hdes = tf([R6*C1,1],[R6*C2*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R3_interval,'x');

%% XI) R6 = 10, C1 = C2 = 0.1, R3 variabil

R6 = 10; C1 = 0.1; C2 = 0.1;
R3_interval = 1: 0.1 : 10;
Hdes = tf([R6*C1,1],[R6*C2*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R3_interval,'x');

%% XII) R6 = 10, C1 = C2 = 1, R3 variabil

R6 = 10; C1 = 1; C2 = 1;
R3_interval = 1: 0.1 : 10;
Hdes = tf([R6*C1,1],[R6*C2*C1,0,0]);
figure,rlocus(Hdes), hold on, rlocus(Hdes,R3_interval,'x');

clear all
close all

%% Length's variable initialization
a1 = 50;
a2 = 50;
d1 = 30; % Height of the Robot
d3 = 2; % Length of prismatic joint 

%% Link Initialization
% L = Link([Theta d a alpha 0/1]) >> 0 for revolute and 1 for prismatic
% SCARA Robot DH parameters
L1 = Link([0 d1 a1 0 0], 'standard');
L2 = Link([0 0 a2 pi 0], 'standard');
L3 = Link([0 d3 0 0 1], 'standard'); % Prismatic joint
L4 = Link([0 15 0 0 0], 'standard'); % End effector

%% Robot settings
L3.qlim = [0 1]; % up/down of prismatic joint for link 3
Rob = SerialLink([L1 L2 L3 L4],'name','SCARA');
Rob.base = [1 0 0 -40;0 1 0 5;0 0 1 0;0 0 0 1];

%% Transformation points (x,y,z)
matrix = dlmread('./Name-Coordinates/Afif.txt');

%% Transformation matrix

P1 = transl(matrix(1,1),matrix(1,2),matrix(1,3));
P2 = transl(matrix(2,1),matrix(2,2),matrix(2,3));
P3 = transl(matrix(3,1),matrix(3,2),matrix(3,3));
P4 = transl(matrix(4,1),matrix(4,2),matrix(4,3));
P5 = transl(matrix(5,1),matrix(5,2),matrix(5,3));
P6 = transl(matrix(6,1),matrix(6,2),matrix(6,3));
P7 = transl(matrix(7,1),matrix(7,2),matrix(7,3));
P8 = transl(matrix(8,1),matrix(8,2),matrix(8,3));
P9 = transl(matrix(9,1),matrix(9,2),matrix(9,3));
P10 = transl(matrix(10,1),matrix(10,2),matrix(10,3));
P11 = transl(matrix(11,1),matrix(11,2),matrix(11,3));
P12 = transl(matrix(12,1),matrix(12,2),matrix(12,3));
P13 = transl(matrix(13,1),matrix(13,2),matrix(13,3));
P14 = transl(matrix(14,1),matrix(14,2),matrix(14,3));
P15 = transl(matrix(15,1),matrix(15,2),matrix(15,3));
P16 = transl(matrix(16,1),matrix(16,2),matrix(16,3));
P17 = transl(matrix(17,1),matrix(17,2),matrix(17,3));
P18 = transl(matrix(18,1),matrix(18,2),matrix(18,3));
P19 = transl(matrix(19,1),matrix(19,2),matrix(19,3));
P20 = transl(matrix(20,1),matrix(20,2),matrix(20,3));
P21 = transl(matrix(21,1),matrix(21,2),matrix(21,3));
P22 = transl(matrix(22,1),matrix(22,2),matrix(22,3));
P23 = transl(matrix(23,1),matrix(23,2),matrix(23,3));
P24 = transl(matrix(24,1),matrix(24,2),matrix(24,3));
P25 = transl(matrix(25,1),matrix(25,2),matrix(25,3));
P26 = transl(matrix(26,1),matrix(26,2),matrix(26,3));
P27 = transl(matrix(27,1),matrix(27,2),matrix(27,3));
P28 = transl(matrix(28,1),matrix(28,2),matrix(28,3));
P29 = transl(matrix(29,1),matrix(29,2),matrix(29,3));
P30 = transl(matrix(30,1),matrix(30,2),matrix(30,3));
P31 = transl(matrix(31,1),matrix(31,2),matrix(31,3));
P32 = transl(matrix(32,1),matrix(32,2),matrix(32,3));
P33 = transl(matrix(33,1),matrix(33,2),matrix(33,3));
P34 = transl(matrix(34,1),matrix(34,2),matrix(34,3));
P35 = transl(matrix(35,1),matrix(35,2),matrix(35,3));
P36 = transl(matrix(36,1),matrix(36,2),matrix(36,3));
P37 = transl(matrix(37,1),matrix(37,2),matrix(37,3));
P38 = transl(matrix(38,1),matrix(38,2),matrix(38,3));
P39 = transl(matrix(39,1),matrix(39,2),matrix(39,3));
P40 = transl(matrix(40,1),matrix(40,2),matrix(40,3));
P41 = transl(matrix(41,1),matrix(41,2),matrix(41,3));
P42 = transl(matrix(42,1),matrix(42,2),matrix(42,3));
P43 = transl(matrix(43,1),matrix(43,2),matrix(43,3));
P44 = transl(matrix(44,1),matrix(44,2),matrix(44,3));
P45 = transl(matrix(45,1),matrix(45,2),matrix(45,3));
P46 = transl(matrix(46,1),matrix(46,2),matrix(46,3));
P47 = transl(matrix(47,1),matrix(47,2),matrix(47,3));
P48 = transl(matrix(48,1),matrix(48,2),matrix(48,3));
P49 = transl(matrix(49,1),matrix(49,2),matrix(49,3));
P50 = transl(matrix(50,1),matrix(50,2),matrix(50,3));
P51 = transl(matrix(51,1),matrix(51,2),matrix(51,3));
P52 = transl(matrix(52,1),matrix(52,2),matrix(52,3));
P53 = transl(matrix(53,1),matrix(53,2),matrix(53,3));
P54 = transl(matrix(54,1),matrix(54,2),matrix(54,3));
P55 = transl(matrix(55,1),matrix(55,2),matrix(55,3));
P56 = transl(matrix(56,1),matrix(56,2),matrix(56,3));
P57 = transl(matrix(57,1),matrix(57,2),matrix(57,3));
P58 = transl(matrix(58,1),matrix(58,2),matrix(58,3));
P59 = transl(matrix(59,1),matrix(59,2),matrix(59,3));
P60 = transl(matrix(60,1),matrix(60,2),matrix(60,3));
P61 = transl(matrix(61,1),matrix(61,2),matrix(61,3));
P62 = transl(matrix(62,1),matrix(62,2),matrix(62,3));
P63 = transl(matrix(63,1),matrix(63,2),matrix(63,3));
P64 = transl(matrix(64,1),matrix(64,2),matrix(64,3));
P65 = transl(matrix(65,1),matrix(65,2),matrix(65,3));
P66 = transl(matrix(66,1),matrix(66,2),matrix(66,3));
P67 = transl(matrix(67,1),matrix(67,2),matrix(67,3));
P68 = transl(matrix(68,1),matrix(68,2),matrix(68,3));
P69 = transl(matrix(69,1),matrix(69,2),matrix(69,3));
P70 = transl(matrix(70,1),matrix(70,2),matrix(70,3));
P71 = transl(matrix(71,1),matrix(71,2),matrix(71,3));
P72 = transl(matrix(72,1),matrix(72,2),matrix(72,3));
P73 = transl(matrix(73,1),matrix(73,2),matrix(73,3));
P74 = transl(matrix(74,1),matrix(74,2),matrix(74,3));
P75 = transl(matrix(75,1),matrix(75,2),matrix(75,3));
P76 = transl(matrix(76,1),matrix(76,2),matrix(76,3));
P77 = transl(matrix(77,1),matrix(77,2),matrix(77,3));
P78 = transl(matrix(78,1),matrix(78,2),matrix(78,3));
P79 = transl(matrix(79,1),matrix(79,2),matrix(79,3));
P80 = transl(matrix(80,1),matrix(80,2),matrix(80,3));
P81 = transl(matrix(81,1),matrix(81,2),matrix(81,3));
P82 = transl(matrix(82,1),matrix(82,2),matrix(82,3));
P83 = transl(matrix(83,1),matrix(83,2),matrix(83,3));
P84 = transl(matrix(84,1),matrix(84,2),matrix(84,3));
P85 = transl(matrix(85,1),matrix(85,2),matrix(85,3));
P86 = transl(matrix(86,1),matrix(86,2),matrix(86,3));
P87 = transl(matrix(87,1),matrix(87,2),matrix(87,3));
P88 = transl(matrix(88,1),matrix(88,2),matrix(88,3));
P89 = transl(matrix(89,1),matrix(89,2),matrix(89,3));
P90 = transl(matrix(90,1),matrix(90,2),matrix(90,3));
P91 = transl(matrix(91,1),matrix(91,2),matrix(91,3));
P92 = transl(matrix(92,1),matrix(92,2),matrix(92,3));
P93 = transl(matrix(93,1),matrix(93,2),matrix(93,3));
P94 = transl(matrix(94,1),matrix(94,2),matrix(94,3));
P95 = transl(matrix(95,1),matrix(95,2),matrix(95,3));
P96 = transl(matrix(96,1),matrix(96,2),matrix(96,3));
P97 = transl(matrix(97,1),matrix(97,2),matrix(97,3));
P98 = transl(matrix(98,1),matrix(98,2),matrix(98,3));
P99 = transl(matrix(99,1),matrix(99,2),matrix(99,3));
P100 = transl(matrix(100,1),matrix(100,2),matrix(100,3));
P101 = transl(matrix(101,1),matrix(101,2),matrix(101,3));
P102 = transl(matrix(102,1),matrix(102,2),matrix(102,3));
P103 = transl(matrix(103,1),matrix(103,2),matrix(103,3));
P104 = transl(matrix(104,1),matrix(104,2),matrix(104,3));
P105 = transl(matrix(105,1),matrix(105,2),matrix(105,3));
P106 = transl(matrix(106,1),matrix(106,2),matrix(106,3));
P107 = transl(matrix(107,1),matrix(107,2),matrix(107,3));
P108 = transl(matrix(108,1),matrix(108,2),matrix(108,3));
P109 = transl(matrix(109,1),matrix(109,2),matrix(109,3));
P110 = transl(matrix(110,1),matrix(110,2),matrix(110,3));
P111 = transl(matrix(111,1),matrix(111,2),matrix(111,3));
P112 = transl(matrix(112,1),matrix(112,2),matrix(112,3));
P113 = transl(matrix(113,1),matrix(113,2),matrix(113,3));
P114 = transl(matrix(114,1),matrix(114,2),matrix(114,3));
P115 = transl(matrix(115,1),matrix(115,2),matrix(115,3));
P116 = transl(matrix(116,1),matrix(116,2),matrix(116,3));
P117 = transl(matrix(117,1),matrix(117,2),matrix(117,3));
P118 = transl(matrix(118,1),matrix(118,2),matrix(118,3));
P119 = transl(matrix(119,1),matrix(119,2),matrix(119,3));
P120 = transl(matrix(120,1),matrix(120,2),matrix(120,3));

%% Calculation of inverse kinematics

q0 = [0 0 0 0];
q1 = Rob.ikine(P1,q0,[1,1,1,0,0,0]);
q2 = Rob.ikine(P2,q1,[1,1,1,0,0,0]);
q3 = Rob.ikine(P3,q2,[1,1,1,0,0,0]);
q4 = Rob.ikine(P4,q3,[1,1,1,0,0,0]);
q5 = Rob.ikine(P5,q4,[1,1,1,0,0,0]);
q6 = Rob.ikine(P6,q5,[1,1,1,0,0,0]);
q7 = Rob.ikine(P7,q6,[1,1,1,0,0,0]);
q8 = Rob.ikine(P8,q7,[1,1,1,0,0,0]);
q9 = Rob.ikine(P9,q8,[1,1,1,0,0,0]);
q10 = Rob.ikine(P10,q9,[1,1,1,0,0,0]);
q11 = Rob.ikine(P11,q10,[1,1,1,0,0,0]);
q12 = Rob.ikine(P12,q11,[1,1,1,0,0,0]);
q13 = Rob.ikine(P13,q12,[1,1,1,0,0,0]);
q14 = Rob.ikine(P14,q13,[1,1,1,0,0,0]);
q15 = Rob.ikine(P15,q14,[1,1,1,0,0,0]);
q16 = Rob.ikine(P16,q15,[1,1,1,0,0,0]);
q17 = Rob.ikine(P17,q16,[1,1,1,0,0,0]);
q18 = Rob.ikine(P18,q17,[1,1,1,0,0,0]);
q19 = Rob.ikine(P19,q18,[1,1,1,0,0,0]);
q20 = Rob.ikine(P20,q19,[1,1,1,0,0,0]);
q21 = Rob.ikine(P21,q20,[1,1,1,0,0,0]);
q22 = Rob.ikine(P22,q21,[1,1,1,0,0,0]);
q23 = Rob.ikine(P23,q22,[1,1,1,0,0,0]);
q24 = Rob.ikine(P24,q23,[1,1,1,0,0,0]);
q25 = Rob.ikine(P25,q24,[1,1,1,0,0,0]);
q26 = Rob.ikine(P26,q25,[1,1,1,0,0,0]);
q27 = Rob.ikine(P27,q26,[1,1,1,0,0,0]);
q28 = Rob.ikine(P28,q27,[1,1,1,0,0,0]);
q29 = Rob.ikine(P29,q28,[1,1,1,0,0,0]);
q30 = Rob.ikine(P30,q29,[1,1,1,0,0,0]);
q31 = Rob.ikine(P31,q30,[1,1,1,0,0,0]);
q32 = Rob.ikine(P32,q31,[1,1,1,0,0,0]);
q33 = Rob.ikine(P33,q32,[1,1,1,0,0,0]);
q34 = Rob.ikine(P34,q33,[1,1,1,0,0,0]);
q35 = Rob.ikine(P35,q34,[1,1,1,0,0,0]);
q36 = Rob.ikine(P36,q35,[1,1,1,0,0,0]);
q37 = Rob.ikine(P37,q36,[1,1,1,0,0,0]);
q38 = Rob.ikine(P38,q37,[1,1,1,0,0,0]);
q39 = Rob.ikine(P39,q38,[1,1,1,0,0,0]);
q40 = Rob.ikine(P40,q39,[1,1,1,0,0,0]);
q41 = Rob.ikine(P41,q40,[1,1,1,0,0,0]);
q42 = Rob.ikine(P42,q41,[1,1,1,0,0,0]);
q43 = Rob.ikine(P43,q42,[1,1,1,0,0,0]);
q44 = Rob.ikine(P44,q43,[1,1,1,0,0,0]);
q45 = Rob.ikine(P45,q44,[1,1,1,0,0,0]);
q46 = Rob.ikine(P46,q45,[1,1,1,0,0,0]);
q47 = Rob.ikine(P47,q46,[1,1,1,0,0,0]);
q48 = Rob.ikine(P48,q47,[1,1,1,0,0,0]);
q49 = Rob.ikine(P49,q48,[1,1,1,0,0,0]);
q50 = Rob.ikine(P50,q49,[1,1,1,0,0,0]);
q51 = Rob.ikine(P51,q50,[1,1,1,0,0,0]);
q52 = Rob.ikine(P52,q51,[1,1,1,0,0,0]);
q53 = Rob.ikine(P53,q52,[1,1,1,0,0,0]);
q54 = Rob.ikine(P54,q53,[1,1,1,0,0,0]);
q55 = Rob.ikine(P55,q54,[1,1,1,0,0,0]);
q56 = Rob.ikine(P56,q55,[1,1,1,0,0,0]);
q57 = Rob.ikine(P57,q56,[1,1,1,0,0,0]);
q58 = Rob.ikine(P58,q57,[1,1,1,0,0,0]);
q59 = Rob.ikine(P59,q58,[1,1,1,0,0,0]);
q60 = Rob.ikine(P60,q59,[1,1,1,0,0,0]);
q61 = Rob.ikine(P61,q60,[1,1,1,0,0,0]);
q62 = Rob.ikine(P62,q61,[1,1,1,0,0,0]);
q63 = Rob.ikine(P63,q62,[1,1,1,0,0,0]);
q64 = Rob.ikine(P64,q63,[1,1,1,0,0,0]);
q65 = Rob.ikine(P65,q64,[1,1,1,0,0,0]);
q66 = Rob.ikine(P66,q65,[1,1,1,0,0,0]);
q67 = Rob.ikine(P67,q66,[1,1,1,0,0,0]);
q68 = Rob.ikine(P68,q67,[1,1,1,0,0,0]);
q69 = Rob.ikine(P69,q68,[1,1,1,0,0,0]);
q70 = Rob.ikine(P70,q69,[1,1,1,0,0,0]);
q71 = Rob.ikine(P71,q70,[1,1,1,0,0,0]);
q72 = Rob.ikine(P72,q71,[1,1,1,0,0,0]);
q73 = Rob.ikine(P73,q72,[1,1,1,0,0,0]);
q74 = Rob.ikine(P74,q73,[1,1,1,0,0,0]);
q75 = Rob.ikine(P75,q74,[1,1,1,0,0,0]);
q76 = Rob.ikine(P76,q75,[1,1,1,0,0,0]);
q77 = Rob.ikine(P77,q76,[1,1,1,0,0,0]);
q78 = Rob.ikine(P78,q77,[1,1,1,0,0,0]);
q79 = Rob.ikine(P79,q78,[1,1,1,0,0,0]);
q80 = Rob.ikine(P80,q79,[1,1,1,0,0,0]);
q81 = Rob.ikine(P81,q80,[1,1,1,0,0,0]);
q82 = Rob.ikine(P82,q81,[1,1,1,0,0,0]);
q83 = Rob.ikine(P83,q82,[1,1,1,0,0,0]);
q84 = Rob.ikine(P84,q83,[1,1,1,0,0,0]);
q85 = Rob.ikine(P85,q84,[1,1,1,0,0,0]);
q86 = Rob.ikine(P86,q85,[1,1,1,0,0,0]);
q87 = Rob.ikine(P87,q86,[1,1,1,0,0,0]);
q88 = Rob.ikine(P88,q87,[1,1,1,0,0,0]);
q89 = Rob.ikine(P89,q88,[1,1,1,0,0,0]);
q90 = Rob.ikine(P90,q89,[1,1,1,0,0,0]);
q91 = Rob.ikine(P91,q90,[1,1,1,0,0,0]);
q92 = Rob.ikine(P92,q91,[1,1,1,0,0,0]);
q93 = Rob.ikine(P93,q92,[1,1,1,0,0,0]);
q94 = Rob.ikine(P94,q93,[1,1,1,0,0,0]);
q95 = Rob.ikine(P95,q94,[1,1,1,0,0,0]);
q96 = Rob.ikine(P96,q95,[1,1,1,0,0,0]);
q97 = Rob.ikine(P97,q96,[1,1,1,0,0,0]);
q98 = Rob.ikine(P98,q97,[1,1,1,0,0,0]);
q99 = Rob.ikine(P99,q98,[1,1,1,0,0,0]);
q100 = Rob.ikine(P100,q99,[1,1,1,0,0,0]);
q101 = Rob.ikine(P101,q100,[1,1,1,0,0,0]);
q102 = Rob.ikine(P102,q101,[1,1,1,0,0,0]);
q103 = Rob.ikine(P103,q102,[1,1,1,0,0,0]);
q104 = Rob.ikine(P104,q103,[1,1,1,0,0,0]);
q105 = Rob.ikine(P105,q104,[1,1,1,0,0,0]);
q106 = Rob.ikine(P106,q105,[1,1,1,0,0,0]);
q107 = Rob.ikine(P107,q106,[1,1,1,0,0,0]);
q108 = Rob.ikine(P108,q107,[1,1,1,0,0,0]);
q109 = Rob.ikine(P109,q108,[1,1,1,0,0,0]);
q110 = Rob.ikine(P110,q109,[1,1,1,0,0,0]);
q111 = Rob.ikine(P111,q110,[1,1,1,0,0,0]);
q112 = Rob.ikine(P112,q111,[1,1,1,0,0,0]);
q113 = Rob.ikine(P113,q112,[1,1,1,0,0,0]);
q114 = Rob.ikine(P114,q113,[1,1,1,0,0,0]);
q115 = Rob.ikine(P115,q114,[1,1,1,0,0,0]);
q116 = Rob.ikine(P116,q115,[1,1,1,0,0,0]);
q117 = Rob.ikine(P117,q116,[1,1,1,0,0,0]);
q118 = Rob.ikine(P118,q117,[1,1,1,0,0,0]);
q119 = Rob.ikine(P119,q118,[1,1,1,0,0,0]);
q120 = Rob.ikine(P120,q119,[1,1,1,0,0,0]);
%% Calculation of forward kinematics (if needed)
% q1_P1 = Rob.fkine(q1);

%% Trajectory path line of the robot
trajectorypath = dlmread('./Name-Coordinates/Afif.txt');
[nx,ny] = size(trajectorypath);

figure
hold on

for i = 1:nx-1
    v=[trajectorypath(i,:);trajectorypath(i+1,:)];
    plot3(v(:,1),v(:,2),v(:,3),'g');
    plot3(v(:,1),v(:,2),v(:,3),'g.')
end

% Labelling certain points
text(8, 41, 30, 'START');
text(20, 80, 40, 'END');

% view settings of 3D plot
axis_matrix = [-40 170 -80 100 -100 100];

axis(axis_matrix);
xlabel('X-Axis');
ylabel('Y-Axis');
zlabel('Z-Axis');

view(0,90);
%view(3);

%% Robot animation/simulation
% Time settings to either speed up/slow down the animation
t = (0: .1: 0.2)';

% All transformation animation

anim1 = jtraj(q0,q1,t); Rob.plot(anim1, 'workspace', axis_matrix);
anim2 = jtraj(q1,q2,t); Rob.plot(anim2, 'workspace', axis_matrix);
anim3 = jtraj(q2,q3,t); Rob.plot(anim3, 'workspace', axis_matrix);
anim4 = jtraj(q3,q4,t); Rob.plot(anim4, 'workspace', axis_matrix);
anim5 = jtraj(q4,q5,t); Rob.plot(anim5, 'workspace', axis_matrix);
anim6 = jtraj(q5,q6,t); Rob.plot(anim6, 'workspace', axis_matrix);
anim7 = jtraj(q6,q7,t); Rob.plot(anim7, 'workspace', axis_matrix);
anim8 = jtraj(q7,q8,t); Rob.plot(anim8, 'workspace', axis_matrix);
anim9 = jtraj(q8,q9,t); Rob.plot(anim9, 'workspace', axis_matrix);
anim10 = jtraj(q9,q10,t); Rob.plot(anim10, 'workspace', axis_matrix);
anim11 = jtraj(q10,q11,t); Rob.plot(anim11, 'workspace', axis_matrix);
anim12 = jtraj(q11,q12,t); Rob.plot(anim12, 'workspace', axis_matrix);
anim13 = jtraj(q12,q13,t); Rob.plot(anim13, 'workspace', axis_matrix);
anim14 = jtraj(q13,q14,t); Rob.plot(anim14, 'workspace', axis_matrix);
anim15 = jtraj(q14,q15,t); Rob.plot(anim15, 'workspace', axis_matrix);
anim16 = jtraj(q15,q16,t); Rob.plot(anim16, 'workspace', axis_matrix);
anim17 = jtraj(q16,q17,t); Rob.plot(anim17, 'workspace', axis_matrix);
anim18 = jtraj(q17,q18,t); Rob.plot(anim18, 'workspace', axis_matrix);
anim19 = jtraj(q18,q19,t); Rob.plot(anim19, 'workspace', axis_matrix);
anim20 = jtraj(q19,q20,t); Rob.plot(anim20, 'workspace', axis_matrix);
anim21 = jtraj(q20,q21,t); Rob.plot(anim21, 'workspace', axis_matrix);
anim22 = jtraj(q21,q22,t); Rob.plot(anim22, 'workspace', axis_matrix);
anim23 = jtraj(q22,q23,t); Rob.plot(anim23, 'workspace', axis_matrix);
anim24 = jtraj(q23,q24,t); Rob.plot(anim24, 'workspace', axis_matrix);
anim25 = jtraj(q24,q25,t); Rob.plot(anim25, 'workspace', axis_matrix);
anim26 = jtraj(q25,q26,t); Rob.plot(anim26, 'workspace', axis_matrix);
anim27 = jtraj(q26,q27,t); Rob.plot(anim27, 'workspace', axis_matrix);
anim28 = jtraj(q27,q28,t); Rob.plot(anim28, 'workspace', axis_matrix);
anim29 = jtraj(q28,q29,t); Rob.plot(anim29, 'workspace', axis_matrix);
anim30 = jtraj(q29,q30,t); Rob.plot(anim30, 'workspace', axis_matrix);
anim31 = jtraj(q30,q31,t); Rob.plot(anim31, 'workspace', axis_matrix);
anim32 = jtraj(q31,q32,t); Rob.plot(anim32, 'workspace', axis_matrix);
anim33 = jtraj(q32,q33,t); Rob.plot(anim33, 'workspace', axis_matrix);
anim34 = jtraj(q33,q34,t); Rob.plot(anim34, 'workspace', axis_matrix);
anim35 = jtraj(q34,q35,t); Rob.plot(anim35, 'workspace', axis_matrix);
anim36 = jtraj(q35,q36,t); Rob.plot(anim36, 'workspace', axis_matrix);
anim37 = jtraj(q36,q37,t); Rob.plot(anim37, 'workspace', axis_matrix);
anim38 = jtraj(q37,q38,t); Rob.plot(anim38, 'workspace', axis_matrix);
anim39 = jtraj(q38,q39,t); Rob.plot(anim39, 'workspace', axis_matrix);
anim40 = jtraj(q39,q40,t); Rob.plot(anim40, 'workspace', axis_matrix);
anim41 = jtraj(q40,q41,t); Rob.plot(anim41, 'workspace', axis_matrix);
anim42 = jtraj(q41,q42,t); Rob.plot(anim42, 'workspace', axis_matrix);
anim43 = jtraj(q42,q43,t); Rob.plot(anim43, 'workspace', axis_matrix);
anim44 = jtraj(q43,q44,t); Rob.plot(anim44, 'workspace', axis_matrix);
anim45 = jtraj(q44,q45,t); Rob.plot(anim45, 'workspace', axis_matrix);
anim46 = jtraj(q45,q46,t); Rob.plot(anim46, 'workspace', axis_matrix);
anim47 = jtraj(q46,q47,t); Rob.plot(anim47, 'workspace', axis_matrix);
anim48 = jtraj(q47,q48,t); Rob.plot(anim48, 'workspace', axis_matrix);
anim49 = jtraj(q48,q49,t); Rob.plot(anim49, 'workspace', axis_matrix);
anim50 = jtraj(q49,q50,t); Rob.plot(anim50, 'workspace', axis_matrix);
anim51 = jtraj(q50,q51,t); Rob.plot(anim51, 'workspace', axis_matrix);
anim52 = jtraj(q51,q52,t); Rob.plot(anim52, 'workspace', axis_matrix);
anim53 = jtraj(q52,q53,t); Rob.plot(anim53, 'workspace', axis_matrix);
anim54 = jtraj(q53,q54,t); Rob.plot(anim54, 'workspace', axis_matrix);
anim55 = jtraj(q54,q55,t); Rob.plot(anim55, 'workspace', axis_matrix);
anim56 = jtraj(q55,q56,t); Rob.plot(anim56, 'workspace', axis_matrix);
anim57 = jtraj(q56,q57,t); Rob.plot(anim57, 'workspace', axis_matrix);
anim58 = jtraj(q57,q58,t); Rob.plot(anim58, 'workspace', axis_matrix);
anim59 = jtraj(q58,q59,t); Rob.plot(anim59, 'workspace', axis_matrix);
anim60 = jtraj(q59,q60,t); Rob.plot(anim60, 'workspace', axis_matrix);
anim61 = jtraj(q60,q61,t); Rob.plot(anim61, 'workspace', axis_matrix);
anim62 = jtraj(q61,q62,t); Rob.plot(anim62, 'workspace', axis_matrix);
anim63 = jtraj(q62,q63,t); Rob.plot(anim63, 'workspace', axis_matrix);
anim64 = jtraj(q63,q64,t); Rob.plot(anim64, 'workspace', axis_matrix);
anim65 = jtraj(q64,q65,t); Rob.plot(anim65, 'workspace', axis_matrix);
anim66 = jtraj(q65,q66,t); Rob.plot(anim66, 'workspace', axis_matrix);
anim67 = jtraj(q66,q67,t); Rob.plot(anim67, 'workspace', axis_matrix);
anim68 = jtraj(q67,q68,t); Rob.plot(anim68, 'workspace', axis_matrix);
anim69 = jtraj(q68,q69,t); Rob.plot(anim69, 'workspace', axis_matrix);
anim70 = jtraj(q69,q70,t); Rob.plot(anim70, 'workspace', axis_matrix);
anim71 = jtraj(q70,q71,t); Rob.plot(anim71, 'workspace', axis_matrix);
anim72 = jtraj(q71,q72,t); Rob.plot(anim72, 'workspace', axis_matrix);
anim73 = jtraj(q72,q73,t); Rob.plot(anim73, 'workspace', axis_matrix);
anim74 = jtraj(q73,q74,t); Rob.plot(anim74, 'workspace', axis_matrix);
anim75 = jtraj(q74,q75,t); Rob.plot(anim75, 'workspace', axis_matrix);
anim76 = jtraj(q75,q76,t); Rob.plot(anim76, 'workspace', axis_matrix);
anim77 = jtraj(q76,q77,t); Rob.plot(anim77, 'workspace', axis_matrix);
anim78 = jtraj(q77,q78,t); Rob.plot(anim78, 'workspace', axis_matrix);
anim79 = jtraj(q78,q79,t); Rob.plot(anim79, 'workspace', axis_matrix);
anim80 = jtraj(q79,q80,t); Rob.plot(anim80, 'workspace', axis_matrix);
anim81 = jtraj(q80,q81,t); Rob.plot(anim81, 'workspace', axis_matrix);
anim82 = jtraj(q81,q82,t); Rob.plot(anim82, 'workspace', axis_matrix);
anim83 = jtraj(q82,q83,t); Rob.plot(anim83, 'workspace', axis_matrix);
anim84 = jtraj(q83,q84,t); Rob.plot(anim84, 'workspace', axis_matrix);
anim85 = jtraj(q84,q85,t); Rob.plot(anim85, 'workspace', axis_matrix);
anim86 = jtraj(q85,q86,t); Rob.plot(anim86, 'workspace', axis_matrix);
anim87 = jtraj(q86,q87,t); Rob.plot(anim87, 'workspace', axis_matrix);
anim88 = jtraj(q87,q88,t); Rob.plot(anim88, 'workspace', axis_matrix);
anim89 = jtraj(q88,q89,t); Rob.plot(anim89, 'workspace', axis_matrix);
anim90 = jtraj(q89,q90,t); Rob.plot(anim90, 'workspace', axis_matrix);
anim91 = jtraj(q90,q91,t); Rob.plot(anim91, 'workspace', axis_matrix);
anim92 = jtraj(q91,q92,t); Rob.plot(anim92, 'workspace', axis_matrix);
anim93 = jtraj(q92,q93,t); Rob.plot(anim93, 'workspace', axis_matrix);
anim94 = jtraj(q93,q94,t); Rob.plot(anim94, 'workspace', axis_matrix);
anim95 = jtraj(q94,q95,t); Rob.plot(anim95, 'workspace', axis_matrix);
anim96 = jtraj(q95,q96,t); Rob.plot(anim96, 'workspace', axis_matrix);
anim97 = jtraj(q96,q97,t); Rob.plot(anim97, 'workspace', axis_matrix);
anim98 = jtraj(q97,q98,t); Rob.plot(anim98, 'workspace', axis_matrix);
anim99 = jtraj(q98,q99,t); Rob.plot(anim99, 'workspace', axis_matrix);
anim100 = jtraj(q99,q100,t); Rob.plot(anim100, 'workspace', axis_matrix);
anim101 = jtraj(q100,q101,t); Rob.plot(anim101, 'workspace', axis_matrix);
anim102 = jtraj(q101,q102,t); Rob.plot(anim102, 'workspace', axis_matrix);
anim103 = jtraj(q102,q103,t); Rob.plot(anim103, 'workspace', axis_matrix);
anim104 = jtraj(q103,q104,t); Rob.plot(anim104, 'workspace', axis_matrix);
anim105 = jtraj(q104,q105,t); Rob.plot(anim105, 'workspace', axis_matrix);
anim106 = jtraj(q105,q106,t); Rob.plot(anim106, 'workspace', axis_matrix);
anim107 = jtraj(q106,q107,t); Rob.plot(anim107, 'workspace', axis_matrix);
anim108 = jtraj(q107,q108,t); Rob.plot(anim108, 'workspace', axis_matrix);
anim109 = jtraj(q108,q109,t); Rob.plot(anim109, 'workspace', axis_matrix);
anim110 = jtraj(q109,q110,t); Rob.plot(anim110, 'workspace', axis_matrix);
anim111 = jtraj(q110,q111,t); Rob.plot(anim111, 'workspace', axis_matrix);
anim112 = jtraj(q111,q112,t); Rob.plot(anim112, 'workspace', axis_matrix);
anim113 = jtraj(q112,q113,t); Rob.plot(anim113, 'workspace', axis_matrix);
anim114 = jtraj(q113,q114,t); Rob.plot(anim114, 'workspace', axis_matrix);
anim115 = jtraj(q114,q115,t); Rob.plot(anim115, 'workspace', axis_matrix);
anim116 = jtraj(q115,q116,t); Rob.plot(anim116, 'workspace', axis_matrix);
anim117 = jtraj(q116,q117,t); Rob.plot(anim117, 'workspace', axis_matrix);
anim118 = jtraj(q117,q118,t); Rob.plot(anim118, 'workspace', axis_matrix);
anim119 = jtraj(q118,q119,t); Rob.plot(anim119, 'workspace', axis_matrix);
anim120 = jtraj(q119,q120,t); Rob.plot(anim120, 'workspace', axis_matrix);
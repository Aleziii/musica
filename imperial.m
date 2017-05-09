%-------------------%
% MARCHA IMPERIAL   %
%-------------------%
clear all;
close all;
fs=8000;

%-------------------%
% TABELA DE NOTAS   %
%-------------------%
do = [16.352, 32.7039, 65.4078, 130.8156, 261.6313, 523.2626, 1046.5253, 2093.0508, 4186.1019];
do_S = [17.3243, 34.6486, 69.2972, 138.5943, 277.1887, 554.3775, 1108.755, 2217.5101, 4435.0205];
re = [18.3544, 36.7089, 73.4178, 146.8356, 293.6712, 587.3425, 1174.6850, 2349.3701, 4698.7406];
re_S = [19.4459, 38.8917, 77.7834, 155.5669, 311.1338, 622.2677, 1244.5354, 2489.0710, 4978.1422];
mi = [20.6022, 41.2043, 82.4087, 164.8174, 329.6348, 659.2696, 1318.5393, 2637.0788, 5274.1580];
fa = [21.8272, 43.6545, 87.3090, 174.6179, 349.2359, 698.4718, 1396.9438, 2793.8877, 5587,7758 ];
fa_S =[23.1252, 46.2503, 92.5006, 185.0013, 370.0025, 740.0051, 1480.0104, 2960.0209, 5920.0423];
sol = [24.5002, 49.0005, 98.0010, 196.0020, 392.0040, 784.0081, 1568.0164, 3136.0330, 6272.0663];
sol_S = [25.9571, 51.9142, 103.8284, 207.6569, 415.3138, 830.6277, 1661.2555, 3322.5112, 6645.0228];
la = [27.5006, 55.0012, 110.0024, 220.0048, 440.0097, 880.0194, 1760.0389, 3520.078, 7040.1565];
la_S = [29.1359, 58.2717, 116.5435, 233.0870, 466.1740, 932.3481, 1864.6963, 3729.3928, 7458.7860];
si = [30.8684, 61.7368, 123.4735, 246.9471, 493.8942, 987.7884, 1975.5769, 3951.1540, 7902.3086];

%-------------------%
% TABELA DE DURAÇÕES%
%-------------------%
base=0.7;
seminima=base;
seminimapon=base*0.5; %seminima pontuada
minima=2*base;
minimapon=2*base*0.5;
semibreve=4*base;
semibrevepon = 4*base*0.5;
colcheia=(1/2)*base;
colcheiapon=(1/2)*base*0.5;
semicolcheia=(1/4)*base;
fusa=(1/8)*base;
semifusa=(1/16)*base;

%-------------------%
%   HARMÔNICOS      %
%-------------------%
H=[1 1/2 1/10];

%-------------------%
%   PARTITURA       %
%-------------------%
A1=[la(5) seminima; la(5) seminima; la(5) seminima; fa(5) colcheiapon; do(5) semicolcheia; la(5) seminima; fa(5) colcheiapon; do(6) semicolcheia; la(5) minima;
    mi(6) seminima; mi(6) seminima; mi(6) seminima; fa(6) colcheiapon; do(5) semicolcheia;
    sol_S(5) seminima; fa(5) colcheiapon; do(5) semicolcheia; la(5) minima;
    la(6) seminima; la(5) colcheiapon; la(5) semicolcheia; la(6) seminima; sol_S(6) colcheiapon; sol(6) semicolcheia; 
    fa_S(6) semicolcheia; fa(6) semicolcheia; fa(6) colcheia;1 colcheia; re_S(6) colcheia; re(6) colcheiapon ; do_S(6) semicolcheia;
    do(6) semicolcheia; si(5) semicolcheia; do(6) colcheia; 1 colcheia; fa(5) colcheia; sol_S(5) seminima; fa(5) colcheiapon; sol_S(5) semicolcheia;
    do(6) seminima; la(5) colcheiapon; do(6) semicolcheia; mi(6) minima; la(6) seminima; la(5) colcheiapon; la(5) semicolcheia; la(6) seminima; sol_S(6) colcheiapon; sol(6) semicolcheia;
    fa_S(6) semicolcheia; fa(6) semicolcheia; fa_S(6) colcheia; 1 colcheia; la_S(5) colcheia; re_S(6) seminima; re(6) colcheiapon; do_S(6) semicolcheia;
    do(6) semicolcheia; si(5) semicolcheia; do(6) colcheia; 1 colcheia; fa(5) colcheia; sol_S(5) seminima; fa(5) colcheiapon; do(6) semicolcheia;
    la(5) seminima; fa(5) colcheiapon; do(6) semicolcheia; la(5) minima;
    
    la(5) seminima; la(5) seminima; la(5) seminima; fa(5) colcheiapon; do(5) semicolcheia; la(5) seminima; fa(5) colcheiapon; do(6) semicolcheia; la(5) minima;
    mi(6) seminima; mi(6) seminima; mi(6) seminima; fa(6) colcheiapon; do(5) semicolcheia;
    sol_S(5) seminima; fa(5) colcheiapon; do(5) semicolcheia; la(5) minima;
    la(6) seminima; la(5) colcheiapon; la(5) semicolcheia; la(6) seminima; sol_S(6) colcheiapon; sol(6) semicolcheia; 
    fa_S(6) semicolcheia; fa(6) semicolcheia; fa(6) colcheia;1 colcheia; re_S(6) colcheia; re(6) colcheiapon ; do_S(6) semicolcheia;
    do(6) semicolcheia; si(5) semicolcheia; do(6) colcheia; 1 colcheia; fa(5) colcheia; sol_S(5) seminima; fa(5) colcheiapon; sol_S(5) semicolcheia;
    do(6) seminima; la(5) colcheiapon; do(6) semicolcheia; mi(6) minima; la(6) seminima; la(5) colcheiapon; la(5) semicolcheia; la(6) seminima; sol_S(6) colcheiapon; sol(6) semicolcheia;
    fa_S(6) semicolcheia; fa(6) semicolcheia; fa_S(6) colcheia; 1 colcheia; la_S(5) colcheia; re_S(6) seminima; re(6) colcheiapon; do_S(6) semicolcheia;
    do(6) semicolcheia; si(5) semicolcheia; do(6) colcheia; 1 colcheia; fa(5) colcheia; sol_S(5) seminima; fa(5) colcheiapon; do(6) semicolcheia;
    la(5) seminima; fa(5) colcheiapon; do(6) semicolcheia; la(5) minima;]

som=[];
y=zeros(size(A1));
tam=length(A1(:,1));

for cont=1:1:tam 
    t = (0:1/fs:A1(cont,2));
    y = H(1)*sin(2*pi*A1(cont,1)*t) + H(2)*sin(2*pi*2*A1(cont,1)*t) + ...
        H(3)*sin(2*pi*3*A1(cont,1)*t); 
        
    % Geração da envoltória
    env=zeros(size(y));
    env(1:410)=linspace(0,409,410)/409; % Ataque da envoltória
    env(411:820)=1 -(linspace(0,409,410)/409)*0.2; % Decaimento para 80%
    env(821:length(y)-408)=0.8*ones(1,length(821:length(y)-408)); % Sustentação
    env(length(y)-409:length(y))=0.8*(1-(linspace(0,409,410)/409)); % Segundo decaimento, fadeOut
    
    y=y.*env;
    som=[som y]; 
end

som=som/max(abs(som)); %Garantia de que a musica esteja entre 1 e -1
sound(som);


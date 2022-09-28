%generate sqaure wave in PWL format
%author:puhang
%data:2021-12-13
%state:finished

tr = 20e-9;%rise time
tf = 20e-9;%fall time
D = 0.8;%D represent duty cycle, and D<1
f = 1e5;%frequency
T = 1/f;%period
t_d = (T - D*T)/4;%time for deadtime/4
V_r = 12;%magnitude of rise up
V_f = 0;%magnitude of fall down 
n = 5;%number of wave period
t_on = T/2-2*t_d-tf-tr;%on time of half period
file_A = fopen('A.txt','w');
file_B = fopen('B.txt','w');

N = [0 V_f;T/2 V_f];
P = [0 V_f;t_d V_f;tr V_r;t_on V_r;tf V_f;t_d V_f];

A_temp = [P;N];B_temp = [N;P];
A = zeros(n*8,2);B = A;
for i = 1:n
    A((i-1)*8+1:i*8,:) = A_temp;
    B((i-1)*8+1:i*8,:) = B_temp;
end

fprintf(file_A,'+%d %d\n',A');
fprintf(file_B,'+%d %d\n',B');

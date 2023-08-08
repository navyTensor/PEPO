function [Nt] = Get_Depth5_Weight10(A, theta)
%% 

Rx = GetRx(theta);
Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];

Ns = zeros(1,32);
cf = -cos(theta)^2*sin(theta)^3;
Id = [14,31,10,11,13,18];
Os = {Sx,Sy,Sz,Sz,Sz,Sz};
Ns(1) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [14,10,31,9,13,18];
Os = {Sx,Sy,Sy,Sz,Sz,Sz};
Ns(2) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)*sin(theta)^4;
Id = [14,11,31,12,13,18];
Os = {Sx,Sy,Sy,Sz,Sz,Sz};
Ns(3) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [10,11,14,31,9,12,13,18];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(4) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [10,31,9,14,18];
Os = {Sy,Sy,Sz,Sz,Sz};
Ns(5) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)*sin(theta)^4;
Id = [31,10,11,14,18];
Os = {Sy,Sz,Sz,Sz,Sz};
Ns(6) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = sin(theta)^5;
Id = [11,31,12,14,18];
Os = {Sy,Sy,Sz,Sz,Sz};
Ns(7) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)*sin(theta)^4;
Id = [10,11,31,9,12,14,18];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(8) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^4*sin(theta);
Id = [14,30,31,10,9,13,18,29];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(9) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [14,30,31,10,11,13,18,29];
Os = {Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(10) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [14,30,31,11,12,13,18,29];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(11) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^3*sin(theta)^2;
Id = [10,11,14,30,31,9,12,13,18,29];
Os = {Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(12) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [30,31,10,9,14,18,29];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(13) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [30,31,10,11,14,18,29];
Os = {Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(14) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)*sin(theta)^4;
Id = [30,31,11,12,14,18,29];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(15) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [10,11,30,31,9,12,14,18,29];
Os = {Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(16) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^4*sin(theta);
Id = [14,31,32,10,9,13,18,33];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(17) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [14,31,32,10,11,13,18,33];
Os = {Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(18) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [14,31,32,11,12,13,18,33];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(19) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^3*sin(theta)^2;
Id = [10,11,14,31,32,9,12,13,18,33];
Os = {Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(20) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [31,32,10,9,14,18,33];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(21) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [31,32,10,11,14,18,33];
Os = {Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(22) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)*sin(theta)^4;
Id = [31,32,11,12,14,18,33];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz};
Ns(23) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [10,11,31,32,9,12,14,18,33];
Os = {Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz};
Ns(24) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^5;
Id = [14,30,32,10,31,9,13,18,29,33];
Os = {Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
Ns(25) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^4*sin(theta);
Id = [14,30,32,31,10,11,13,18,29,33];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
Ns(26) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [14,30,32,11,31,12,13,18,29,33];
Os = {Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
Ns(27) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^4*sin(theta);
Id = [10,11,14,30,32,31,9,12,13,18,29,33];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
Ns(28) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^4*sin(theta);
Id = [30,32,10,31,9,14,18,29,33];
Os = {Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
Ns(29) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = cos(theta)^3*sin(theta)^2;
Id = [30,32,31,10,11,14,18,29,33];
Os = {Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
Ns(30) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [30,32,11,31,12,14,18,29,33];
Os = {Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
Ns(31) = Get_Exact_String(Id, Os, A, Rx)*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [10,11,30,32,31,9,12,14,18,29,33];
Os = {Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
Ns(32) = Get_Exact_String(Id, Os, A, Rx)*cf;

Nt = sum(Ns)

end
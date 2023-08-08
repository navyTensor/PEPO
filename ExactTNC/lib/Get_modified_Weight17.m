function [Ns] = Get_modified_Weight17(A, theta)
%% it contains 512 terms in total

Rx = GetRx(theta);
Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];

Ns = zeros(1,512);

cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 81, 38, 76, 60, 62, 72, 77, 79 ];
Ns(1) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 81, 42, 76, 60, 62, 72, 77, 79 ];
Ns(2) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -sin(theta)^9;
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 38, 63, 76, 80, 60, 62, 72, 77, 79 ];
Ns(3) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 42, 63, 76, 80, 60, 62, 72, 77, 79 ];
Ns(4) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 81, 76, 40, 60, 62, 72, 77, 79 ];
Ns(5) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 76, 40, 60, 62, 72, 77, 79 ];
Ns(6) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 76, 80, 40, 60, 62, 72, 77, 79 ];
Ns(7) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)*sin(theta)^8;
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 38, 42, 63, 76, 80, 40, 60, 62, 72, 77, 79 ];
Ns(8) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 76, 44, 60, 62, 72, 77, 79 ];
Ns(9) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 76, 44, 60, 62, 72, 77, 79 ];
Ns(10) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 76, 80, 44, 60, 62, 72, 77, 79 ];
Ns(11) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)*sin(theta)^8;
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 38, 42, 63, 76, 80, 44, 60, 62, 72, 77, 79 ];
Ns(12) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 76, 40, 44, 60, 62, 72, 77, 79 ];
Ns(13) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 81, 42, 76, 40, 44, 60, 62, 72, 77, 79 ];
Ns(14) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 38, 63, 76, 80, 40, 44, 60, 62, 72, 77, 79 ];
Ns(15) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 42, 63, 76, 80, 40, 44, 60, 62, 72, 77, 79 ];
Ns(16) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 76, 60, 62, 65, 72, 77, 79 ];
Ns(17) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 76, 60, 62, 65, 72, 77, 79 ];
Ns(18) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 38, 76, 80, 60, 62, 65, 72, 77, 79 ];
Ns(19) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 42, 76, 80, 60, 62, 65, 72, 77, 79 ];
Ns(20) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 81, 63, 76, 40, 60, 62, 65, 72, 77, 79 ];
Ns(21) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 76, 40, 60, 62, 65, 72, 77, 79 ];
Ns(22) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 76, 80, 40, 60, 62, 65, 72, 77, 79 ];
Ns(23) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 38, 42, 76, 80, 40, 60, 62, 65, 72, 77, 79 ];
Ns(24) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 63, 76, 44, 60, 62, 65, 72, 77, 79 ];
Ns(25) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 76, 44, 60, 62, 65, 72, 77, 79 ];
Ns(26) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 80, 44, 60, 62, 65, 72, 77, 79 ];
Ns(27) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 38, 42, 76, 80, 44, 60, 62, 65, 72, 77, 79 ];
Ns(28) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 76, 40, 44, 60, 62, 65, 72, 77, 79 ];
Ns(29) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 76, 40, 44, 60, 62, 65, 72, 77, 79 ];
Ns(30) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 38, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79 ];
Ns(31) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 42, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79 ];
Ns(32) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 81, 38, 63, 76, 60, 62, 72, 77, 79, 82 ];
Ns(33) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 81, 42, 63, 76, 60, 62, 72, 77, 79, 82 ];
Ns(34) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 38, 76, 80, 60, 62, 72, 77, 79, 82 ];
Ns(35) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 42, 76, 80, 60, 62, 72, 77, 79, 82 ];
Ns(36) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 81, 63, 76, 40, 60, 62, 72, 77, 79, 82 ];
Ns(37) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 81, 38, 42, 63, 76, 40, 60, 62, 72, 77, 79, 82 ];
Ns(38) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 76, 80, 40, 60, 62, 72, 77, 79, 82 ];
Ns(39) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 38, 42, 76, 80, 40, 60, 62, 72, 77, 79, 82 ];
Ns(40) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 81, 63, 76, 44, 60, 62, 72, 77, 79, 82 ];
Ns(41) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 81, 38, 42, 63, 76, 44, 60, 62, 72, 77, 79, 82 ];
Ns(42) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 80, 44, 60, 62, 72, 77, 79, 82 ];
Ns(43) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 38, 42, 76, 80, 44, 60, 62, 72, 77, 79, 82 ];
Ns(44) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 81, 38, 63, 76, 40, 44, 60, 62, 72, 77, 79, 82 ];
Ns(45) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 81, 42, 63, 76, 40, 44, 60, 62, 72, 77, 79, 82 ];
Ns(46) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 38, 76, 80, 40, 44, 60, 62, 72, 77, 79, 82 ];
Ns(47) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 42, 76, 80, 40, 44, 60, 62, 72, 77, 79, 82 ];
Ns(48) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 81, 38, 76, 60, 62, 65, 72, 77, 79, 82 ];
Ns(49) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 81, 42, 76, 60, 62, 65, 72, 77, 79, 82 ];
Ns(50) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 38, 63, 76, 80, 60, 62, 65, 72, 77, 79, 82 ];
Ns(51) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 42, 63, 76, 80, 60, 62, 65, 72, 77, 79, 82 ];
Ns(52) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 81, 76, 40, 60, 62, 65, 72, 77, 79, 82 ];
Ns(53) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 76, 40, 60, 62, 65, 72, 77, 79, 82 ];
Ns(54) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 63, 76, 80, 40, 60, 62, 65, 72, 77, 79, 82 ];
Ns(55) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 38, 42, 63, 76, 80, 40, 60, 62, 65, 72, 77, 79, 82 ];
Ns(56) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 76, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(57) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 76, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(58) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 63, 76, 80, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(59) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 38, 42, 63, 76, 80, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(60) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 76, 40, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(61) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 81, 42, 76, 40, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(62) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 38, 63, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(63) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 42, 63, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82 ];
Ns(64) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 81, 38, 60, 62, 72, 76, 79, 91 ];
Ns(65) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 81, 42, 60, 62, 72, 76, 79, 91 ];
Ns(66) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)*sin(theta)^8;
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 38, 63, 80, 60, 62, 72, 76, 79, 91 ];
Ns(67) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 42, 63, 80, 60, 62, 72, 76, 79, 91 ];
Ns(68) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 81, 40, 60, 62, 72, 76, 79, 91 ];
Ns(69) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 40, 60, 62, 72, 76, 79, 91 ];
Ns(70) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 80, 40, 60, 62, 72, 76, 79, 91 ];
Ns(71) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 38, 42, 63, 80, 40, 60, 62, 72, 76, 79, 91 ];
Ns(72) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 44, 60, 62, 72, 76, 79, 91 ];
Ns(73) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 44, 60, 62, 72, 76, 79, 91 ];
Ns(74) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 80, 44, 60, 62, 72, 76, 79, 91 ];
Ns(75) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 38, 42, 63, 80, 44, 60, 62, 72, 76, 79, 91 ];
Ns(76) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 40, 44, 60, 62, 72, 76, 79, 91 ];
Ns(77) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 81, 42, 40, 44, 60, 62, 72, 76, 79, 91 ];
Ns(78) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 38, 63, 80, 40, 44, 60, 62, 72, 76, 79, 91 ];
Ns(79) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 42, 63, 80, 40, 44, 60, 62, 72, 76, 79, 91 ];
Ns(80) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 60, 62, 65, 72, 76, 79, 91 ];
Ns(81) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 60, 62, 65, 72, 76, 79, 91 ];
Ns(82) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 38, 80, 60, 62, 65, 72, 76, 79, 91 ];
Ns(83) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 42, 80, 60, 62, 65, 72, 76, 79, 91 ];
Ns(84) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 81, 63, 40, 60, 62, 65, 72, 76, 79, 91 ];
Ns(85) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 40, 60, 62, 65, 72, 76, 79, 91 ];
Ns(86) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 40, 60, 62, 65, 72, 76, 79, 91 ];
Ns(87) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 38, 42, 80, 40, 60, 62, 65, 72, 76, 79, 91 ];
Ns(88) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 63, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(89) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(90) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(91) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 38, 42, 80, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(92) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 40, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(93) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 40, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(94) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 38, 80, 40, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(95) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 42, 80, 40, 44, 60, 62, 65, 72, 76, 79, 91 ];
Ns(96) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 81, 38, 63, 60, 62, 72, 76, 79, 82, 91 ];
Ns(97) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 81, 42, 63, 60, 62, 72, 76, 79, 82, 91 ];
Ns(98) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 38, 80, 60, 62, 72, 76, 79, 82, 91 ];
Ns(99) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 42, 80, 60, 62, 72, 76, 79, 82, 91 ];
Ns(100) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 81, 63, 40, 60, 62, 72, 76, 79, 82, 91 ];
Ns(101) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 81, 38, 42, 63, 40, 60, 62, 72, 76, 79, 82, 91 ];
Ns(102) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 40, 60, 62, 72, 76, 79, 82, 91 ];
Ns(103) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 38, 42, 80, 40, 60, 62, 72, 76, 79, 82, 91 ];
Ns(104) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 81, 63, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(105) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 81, 38, 42, 63, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(106) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(107) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 38, 42, 80, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(108) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 81, 38, 63, 40, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(109) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 81, 42, 63, 40, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(110) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 38, 80, 40, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(111) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 42, 80, 40, 44, 60, 62, 72, 76, 79, 82, 91 ];
Ns(112) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 81, 38, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(113) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 81, 42, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(114) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 38, 63, 80, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(115) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 42, 63, 80, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(116) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 81, 40, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(117) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 40, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(118) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 63, 80, 40, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(119) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 38, 42, 63, 80, 40, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(120) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(121) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(122) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 63, 80, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(123) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 38, 42, 63, 80, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(124) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(125) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 81, 42, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(126) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 38, 63, 80, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(127) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 42, 63, 80, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91 ];
Ns(128) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 81, 38, 91, 60, 62, 72, 79, 95 ];
Ns(129) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 81, 42, 91, 60, 62, 72, 79, 95 ];
Ns(130) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 38, 63, 80, 91, 60, 62, 72, 79, 95 ];
Ns(131) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 42, 63, 80, 91, 60, 62, 72, 79, 95 ];
Ns(132) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 81, 91, 40, 60, 62, 72, 79, 95 ];
Ns(133) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 91, 40, 60, 62, 72, 79, 95 ];
Ns(134) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 80, 91, 40, 60, 62, 72, 79, 95 ];
Ns(135) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 38, 42, 63, 80, 91, 40, 60, 62, 72, 79, 95 ];
Ns(136) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 91, 44, 60, 62, 72, 79, 95 ];
Ns(137) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 42, 91, 44, 60, 62, 72, 79, 95 ];
Ns(138) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 80, 91, 44, 60, 62, 72, 79, 95 ];
Ns(139) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 38, 42, 63, 80, 91, 44, 60, 62, 72, 79, 95 ];
Ns(140) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 81, 38, 91, 40, 44, 60, 62, 72, 79, 95 ];
Ns(141) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 81, 42, 91, 40, 44, 60, 62, 72, 79, 95 ];
Ns(142) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 38, 63, 80, 91, 40, 44, 60, 62, 72, 79, 95 ];
Ns(143) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 42, 63, 80, 91, 40, 44, 60, 62, 72, 79, 95 ];
Ns(144) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 91, 60, 62, 65, 72, 79, 95 ];
Ns(145) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 91, 60, 62, 65, 72, 79, 95 ];
Ns(146) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 38, 80, 91, 60, 62, 65, 72, 79, 95 ];
Ns(147) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 42, 80, 91, 60, 62, 65, 72, 79, 95 ];
Ns(148) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 81, 63, 91, 40, 60, 62, 65, 72, 79, 95 ];
Ns(149) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 91, 40, 60, 62, 65, 72, 79, 95 ];
Ns(150) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 91, 40, 60, 62, 65, 72, 79, 95 ];
Ns(151) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 38, 42, 80, 91, 40, 60, 62, 65, 72, 79, 95 ];
Ns(152) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^8*sin(theta);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 63, 91, 44, 60, 62, 65, 72, 79, 95 ];
Ns(153) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 42, 63, 91, 44, 60, 62, 65, 72, 79, 95 ];
Ns(154) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 91, 44, 60, 62, 65, 72, 79, 95 ];
Ns(155) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 38, 42, 80, 91, 44, 60, 62, 65, 72, 79, 95 ];
Ns(156) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 81, 38, 63, 91, 40, 44, 60, 62, 65, 72, 79, 95 ];
Ns(157) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 81, 42, 63, 91, 40, 44, 60, 62, 65, 72, 79, 95 ];
Ns(158) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 38, 80, 91, 40, 44, 60, 62, 65, 72, 79, 95 ];
Ns(159) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 42, 80, 91, 40, 44, 60, 62, 65, 72, 79, 95 ];
Ns(160) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 38, 60, 62, 72, 77, 79, 95 ];
Ns(161) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 42, 60, 62, 72, 77, 79, 95 ];
Ns(162) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 76, 91, 38, 63, 80, 60, 62, 72, 77, 79, 95 ];
Ns(163) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 76, 91, 42, 63, 80, 60, 62, 72, 77, 79, 95 ];
Ns(164) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 40, 60, 62, 72, 77, 79, 95 ];
Ns(165) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 38, 42, 40, 60, 62, 72, 77, 79, 95 ];
Ns(166) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 76, 91, 63, 80, 40, 60, 62, 72, 77, 79, 95 ];
Ns(167) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 76, 91, 38, 42, 63, 80, 40, 60, 62, 72, 77, 79, 95 ];
Ns(168) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 44, 60, 62, 72, 77, 79, 95 ];
Ns(169) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 38, 42, 44, 60, 62, 72, 77, 79, 95 ];
Ns(170) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 76, 91, 63, 80, 44, 60, 62, 72, 77, 79, 95 ];
Ns(171) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 76, 91, 38, 42, 63, 80, 44, 60, 62, 72, 77, 79, 95 ];
Ns(172) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 38, 40, 44, 60, 62, 72, 77, 79, 95 ];
Ns(173) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 76, 80, 81, 91, 42, 40, 44, 60, 62, 72, 77, 79, 95 ];
Ns(174) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 76, 91, 38, 63, 80, 40, 44, 60, 62, 72, 77, 79, 95 ];
Ns(175) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 76, 91, 42, 63, 80, 40, 44, 60, 62, 72, 77, 79, 95 ];
Ns(176) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 38, 63, 60, 62, 65, 72, 77, 79, 95 ];
Ns(177) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 42, 63, 60, 62, 65, 72, 77, 79, 95 ];
Ns(178) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 76, 91, 38, 80, 60, 62, 65, 72, 77, 79, 95 ];
Ns(179) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 76, 91, 42, 80, 60, 62, 65, 72, 77, 79, 95 ];
Ns(180) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 63, 40, 60, 62, 65, 72, 77, 79, 95 ];
Ns(181) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 38, 42, 63, 40, 60, 62, 65, 72, 77, 79, 95 ];
Ns(182) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 76, 91, 80, 40, 60, 62, 65, 72, 77, 79, 95 ];
Ns(183) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 76, 91, 38, 42, 80, 40, 60, 62, 65, 72, 77, 79, 95 ];
Ns(184) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 63, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(185) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 38, 42, 63, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(186) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 91, 80, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(187) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 76, 91, 38, 42, 80, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(188) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 38, 63, 40, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(189) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 76, 80, 81, 91, 42, 63, 40, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(190) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 91, 38, 80, 40, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(191) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 76, 91, 42, 80, 40, 44, 60, 62, 65, 72, 77, 79, 95 ];
Ns(192) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 81, 38, 63, 91, 60, 62, 72, 79, 82, 95 ];
Ns(193) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 81, 42, 63, 91, 60, 62, 72, 79, 82, 95 ];
Ns(194) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 38, 80, 91, 60, 62, 72, 79, 82, 95 ];
Ns(195) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 42, 80, 91, 60, 62, 72, 79, 82, 95 ];
Ns(196) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 81, 63, 91, 40, 60, 62, 72, 79, 82, 95 ];
Ns(197) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 81, 38, 42, 63, 91, 40, 60, 62, 72, 79, 82, 95 ];
Ns(198) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 91, 40, 60, 62, 72, 79, 82, 95 ];
Ns(199) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 38, 42, 80, 91, 40, 60, 62, 72, 79, 82, 95 ];
Ns(200) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 81, 63, 91, 44, 60, 62, 72, 79, 82, 95 ];
Ns(201) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 81, 38, 42, 63, 91, 44, 60, 62, 72, 79, 82, 95 ];
Ns(202) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 91, 44, 60, 62, 72, 79, 82, 95 ];
Ns(203) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 38, 42, 80, 91, 44, 60, 62, 72, 79, 82, 95 ];
Ns(204) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 81, 38, 63, 91, 40, 44, 60, 62, 72, 79, 82, 95 ];
Ns(205) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 81, 42, 63, 91, 40, 44, 60, 62, 72, 79, 82, 95 ];
Ns(206) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 38, 80, 91, 40, 44, 60, 62, 72, 79, 82, 95 ];
Ns(207) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 42, 80, 91, 40, 44, 60, 62, 72, 79, 82, 95 ];
Ns(208) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 81, 38, 91, 60, 62, 65, 72, 79, 82, 95 ];
Ns(209) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 81, 42, 91, 60, 62, 65, 72, 79, 82, 95 ];
Ns(210) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 38, 63, 80, 91, 60, 62, 65, 72, 79, 82, 95 ];
Ns(211) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 42, 63, 80, 91, 60, 62, 65, 72, 79, 82, 95 ];
Ns(212) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 81, 91, 40, 60, 62, 65, 72, 79, 82, 95 ];
Ns(213) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 91, 40, 60, 62, 65, 72, 79, 82, 95 ];
Ns(214) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 63, 80, 91, 40, 60, 62, 65, 72, 79, 82, 95 ];
Ns(215) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 38, 42, 63, 80, 91, 40, 60, 62, 65, 72, 79, 82, 95 ];
Ns(216) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 91, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(217) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 42, 91, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(218) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 63, 80, 91, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(219) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 38, 42, 63, 80, 91, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(220) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 81, 38, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(221) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 81, 42, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(222) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 38, 63, 80, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(223) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 42, 63, 80, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95 ];
Ns(224) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 76, 80, 81, 91, 38, 63, 60, 62, 72, 77, 79, 82, 95 ];
Ns(225) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 76, 80, 81, 91, 42, 63, 60, 62, 72, 77, 79, 82, 95 ];
Ns(226) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 76, 91, 38, 80, 60, 62, 72, 77, 79, 82, 95 ];
Ns(227) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 76, 91, 42, 80, 60, 62, 72, 77, 79, 82, 95 ];
Ns(228) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 76, 80, 81, 91, 63, 40, 60, 62, 72, 77, 79, 82, 95 ];
Ns(229) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 76, 80, 81, 91, 38, 42, 63, 40, 60, 62, 72, 77, 79, 82, 95 ];
Ns(230) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 76, 91, 80, 40, 60, 62, 72, 77, 79, 82, 95 ];
Ns(231) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 76, 91, 38, 42, 80, 40, 60, 62, 72, 77, 79, 82, 95 ];
Ns(232) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 76, 80, 81, 91, 63, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(233) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 76, 80, 81, 91, 38, 42, 63, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(234) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 91, 80, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(235) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 76, 91, 38, 42, 80, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(236) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 76, 80, 81, 91, 38, 63, 40, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(237) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 76, 80, 81, 91, 42, 63, 40, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(238) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 91, 38, 80, 40, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(239) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 76, 91, 42, 80, 40, 44, 60, 62, 72, 77, 79, 82, 95 ];
Ns(240) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 38, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(241) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 42, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(242) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 76, 91, 38, 63, 80, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(243) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 76, 91, 42, 63, 80, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(244) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 40, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(245) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 38, 42, 40, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(246) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 76, 91, 63, 80, 40, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(247) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 76, 91, 38, 42, 63, 80, 40, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(248) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(249) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 38, 42, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(250) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 91, 63, 80, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(251) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 76, 91, 38, 42, 63, 80, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(252) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 38, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(253) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 76, 80, 81, 91, 42, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(254) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 91, 38, 63, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(255) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 76, 91, 42, 63, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95 ];
Ns(256) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)*sin(theta)^8);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 92, 38, 63, 76, 60, 62, 72, 77, 79, 99 ];
Ns(257) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 92, 42, 63, 76, 60, 62, 72, 77, 79, 99 ];
Ns(258) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 81, 92, 38, 76, 80, 60, 62, 72, 77, 79, 99 ];
Ns(259) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 81, 92, 42, 76, 80, 60, 62, 72, 77, 79, 99 ];
Ns(260) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 92, 63, 76, 40, 60, 62, 72, 77, 79, 99 ];
Ns(261) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 92, 38, 42, 63, 76, 40, 60, 62, 72, 77, 79, 99 ];
Ns(262) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 81, 92, 76, 80, 40, 60, 62, 72, 77, 79, 99 ];
Ns(263) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 76, 80, 40, 60, 62, 72, 77, 79, 99 ];
Ns(264) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 92, 63, 76, 44, 60, 62, 72, 77, 79, 99 ];
Ns(265) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 92, 38, 42, 63, 76, 44, 60, 62, 72, 77, 79, 99 ];
Ns(266) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 76, 80, 44, 60, 62, 72, 77, 79, 99 ];
Ns(267) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 76, 80, 44, 60, 62, 72, 77, 79, 99 ];
Ns(268) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 92, 38, 63, 76, 40, 44, 60, 62, 72, 77, 79, 99 ];
Ns(269) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 92, 42, 63, 76, 40, 44, 60, 62, 72, 77, 79, 99 ];
Ns(270) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 76, 80, 40, 44, 60, 62, 72, 77, 79, 99 ];
Ns(271) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 81, 92, 42, 76, 80, 40, 44, 60, 62, 72, 77, 79, 99 ];
Ns(272) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 92, 38, 76, 60, 62, 65, 72, 77, 79, 99 ];
Ns(273) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 92, 42, 76, 60, 62, 65, 72, 77, 79, 99 ];
Ns(274) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 76, 80, 60, 62, 65, 72, 77, 79, 99 ];
Ns(275) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 76, 80, 60, 62, 65, 72, 77, 79, 99 ];
Ns(276) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 92, 76, 40, 60, 62, 65, 72, 77, 79, 99 ];
Ns(277) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 76, 40, 60, 62, 65, 72, 77, 79, 99 ];
Ns(278) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 81, 92, 63, 76, 80, 40, 60, 62, 65, 72, 77, 79, 99 ];
Ns(279) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 76, 80, 40, 60, 62, 65, 72, 77, 79, 99 ];
Ns(280) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 76, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(281) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 76, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(282) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 63, 76, 80, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(283) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 76, 80, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(284) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 76, 40, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(285) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 92, 42, 76, 40, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(286) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(287) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 99 ];
Ns(288) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 92, 38, 76, 60, 62, 72, 77, 79, 82, 99 ];
Ns(289) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 92, 42, 76, 60, 62, 72, 77, 79, 82, 99 ];
Ns(290) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 81, 92, 38, 63, 76, 80, 60, 62, 72, 77, 79, 82, 99 ];
Ns(291) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 81, 92, 42, 63, 76, 80, 60, 62, 72, 77, 79, 82, 99 ];
Ns(292) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 92, 76, 40, 60, 62, 72, 77, 79, 82, 99 ];
Ns(293) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 76, 40, 60, 62, 72, 77, 79, 82, 99 ];
Ns(294) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 81, 92, 63, 76, 80, 40, 60, 62, 72, 77, 79, 82, 99 ];
Ns(295) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 81, 92, 38, 42, 63, 76, 80, 40, 60, 62, 72, 77, 79, 82, 99 ];
Ns(296) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 76, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(297) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 76, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(298) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 81, 92, 63, 76, 80, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(299) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 81, 92, 38, 42, 63, 76, 80, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(300) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 76, 40, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(301) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 92, 42, 76, 40, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(302) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 81, 92, 38, 63, 76, 80, 40, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(303) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 81, 92, 42, 63, 76, 80, 40, 44, 60, 62, 72, 77, 79, 82, 99 ];
Ns(304) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 76, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(305) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 76, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(306) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 81, 92, 38, 76, 80, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(307) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 81, 92, 42, 76, 80, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(308) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 92, 63, 76, 40, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(309) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 76, 40, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(310) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 81, 92, 76, 80, 40, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(311) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 76, 80, 40, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(312) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 63, 76, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(313) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 76, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(314) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 76, 80, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(315) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 76, 80, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(316) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 76, 40, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(317) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 76, 40, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(318) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(319) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 81, 92, 42, 76, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 99 ];
Ns(320) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^2*sin(theta)^7;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 92, 38, 63, 60, 62, 72, 76, 79, 91, 99 ];
Ns(321) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 92, 42, 63, 60, 62, 72, 76, 79, 91, 99 ];
Ns(322) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 81, 92, 38, 80, 60, 62, 72, 76, 79, 91, 99 ];
Ns(323) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 81, 92, 42, 80, 60, 62, 72, 76, 79, 91, 99 ];
Ns(324) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 92, 63, 40, 60, 62, 72, 76, 79, 91, 99 ];
Ns(325) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 92, 38, 42, 63, 40, 60, 62, 72, 76, 79, 91, 99 ];
Ns(326) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 81, 92, 80, 40, 60, 62, 72, 76, 79, 91, 99 ];
Ns(327) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 80, 40, 60, 62, 72, 76, 79, 91, 99 ];
Ns(328) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 92, 63, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(329) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 92, 38, 42, 63, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(330) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 80, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(331) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 80, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(332) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 92, 38, 63, 40, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(333) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 92, 42, 63, 40, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(334) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 80, 40, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(335) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 81, 92, 42, 80, 40, 44, 60, 62, 72, 76, 79, 91, 99 ];
Ns(336) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 92, 38, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(337) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 92, 42, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(338) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 80, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(339) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 80, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(340) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 92, 40, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(341) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 40, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(342) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 81, 92, 63, 80, 40, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(343) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 80, 40, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(344) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(345) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(346) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^8*sin(theta));
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 63, 80, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(347) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 80, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(348) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 40, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(349) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 92, 42, 40, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(350) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 80, 40, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(351) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 80, 40, 44, 60, 62, 65, 72, 76, 79, 91, 99 ];
Ns(352) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 92, 38, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(353) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 92, 42, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(354) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 81, 92, 38, 63, 80, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(355) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 81, 92, 42, 63, 80, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(356) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 92, 40, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(357) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 40, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(358) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 81, 92, 63, 80, 40, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(359) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 81, 92, 38, 42, 63, 80, 40, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(360) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(361) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(362) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 81, 92, 63, 80, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(363) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 81, 92, 38, 42, 63, 80, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(364) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 40, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(365) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 92, 42, 40, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(366) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 81, 92, 38, 63, 80, 40, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(367) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 81, 92, 42, 63, 80, 40, 44, 60, 62, 72, 76, 79, 82, 91, 99 ];
Ns(368) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(369) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(370) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 81, 92, 38, 80, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(371) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 81, 92, 42, 80, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(372) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 92, 63, 40, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(373) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 40, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(374) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 81, 92, 80, 40, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(375) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 80, 40, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(376) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 63, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(377) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(378) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 80, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(379) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 80, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(380) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(381) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(382) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 80, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(383) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 81, 92, 42, 80, 40, 44, 60, 62, 65, 72, 76, 79, 82, 91, 99 ];
Ns(384) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 80, 92, 38, 63, 91, 60, 62, 72, 79, 95, 99 ];
Ns(385) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 80, 92, 42, 63, 91, 60, 62, 72, 79, 95, 99 ];
Ns(386) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 81, 92, 38, 80, 91, 60, 62, 72, 79, 95, 99 ];
Ns(387) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 81, 92, 42, 80, 91, 60, 62, 72, 79, 95, 99 ];
Ns(388) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 80, 92, 63, 91, 40, 60, 62, 72, 79, 95, 99 ];
Ns(389) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 80, 92, 38, 42, 63, 91, 40, 60, 62, 72, 79, 95, 99 ];
Ns(390) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 81, 92, 80, 91, 40, 60, 62, 72, 79, 95, 99 ];
Ns(391) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 80, 91, 40, 60, 62, 72, 79, 95, 99 ];
Ns(392) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 80, 92, 63, 91, 44, 60, 62, 72, 79, 95, 99 ];
Ns(393) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 80, 92, 38, 42, 63, 91, 44, 60, 62, 72, 79, 95, 99 ];
Ns(394) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^8*sin(theta);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 80, 91, 44, 60, 62, 72, 79, 95, 99 ];
Ns(395) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 42, 80, 91, 44, 60, 62, 72, 79, 95, 99 ];
Ns(396) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 80, 92, 38, 63, 91, 40, 44, 60, 62, 72, 79, 95, 99 ];
Ns(397) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 80, 92, 42, 63, 91, 40, 44, 60, 62, 72, 79, 95, 99 ];
Ns(398) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 81, 92, 38, 80, 91, 40, 44, 60, 62, 72, 79, 95, 99 ];
Ns(399) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 81, 92, 42, 80, 91, 40, 44, 60, 62, 72, 79, 95, 99 ];
Ns(400) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 80, 92, 38, 91, 60, 62, 65, 72, 79, 95, 99 ];
Ns(401) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 80, 92, 42, 91, 60, 62, 65, 72, 79, 95, 99 ];
Ns(402) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 80, 91, 60, 62, 65, 72, 79, 95, 99 ];
Ns(403) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^8*sin(theta));
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 80, 91, 60, 62, 65, 72, 79, 95, 99 ];
Ns(404) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 80, 92, 91, 40, 60, 62, 65, 72, 79, 95, 99 ];
Ns(405) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 91, 40, 60, 62, 65, 72, 79, 95, 99 ];
Ns(406) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 81, 92, 63, 80, 91, 40, 60, 62, 65, 72, 79, 95, 99 ];
Ns(407) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 80, 91, 40, 60, 62, 65, 72, 79, 95, 99 ];
Ns(408) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 91, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(409) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 42, 91, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(410) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -cos(theta)^9;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 63, 80, 91, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(411) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 42, 63, 80, 91, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(412) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 80, 92, 38, 91, 40, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(413) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 80, 92, 42, 91, 40, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(414) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^8*sin(theta));
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 81, 92, 38, 63, 80, 91, 40, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(415) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^8*sin(theta));
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 81, 92, 42, 63, 80, 91, 40, 44, 60, 62, 65, 72, 79, 95, 99 ];
Ns(416) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^2*sin(theta)^7);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 76, 80, 91, 92, 38, 63, 60, 62, 72, 77, 79, 95, 99 ];
Ns(417) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 76, 80, 91, 92, 42, 63, 60, 62, 72, 77, 79, 95, 99 ];
Ns(418) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 38, 80, 60, 62, 72, 77, 79, 95, 99 ];
Ns(419) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 42, 80, 60, 62, 72, 77, 79, 95, 99 ];
Ns(420) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 76, 80, 91, 92, 63, 40, 60, 62, 72, 77, 79, 95, 99 ];
Ns(421) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 76, 80, 91, 92, 38, 42, 63, 40, 60, 62, 72, 77, 79, 95, 99 ];
Ns(422) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 80, 40, 60, 62, 72, 77, 79, 95, 99 ];
Ns(423) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 38, 42, 80, 40, 60, 62, 72, 77, 79, 95, 99 ];
Ns(424) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 76, 80, 91, 92, 63, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(425) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 76, 80, 91, 92, 38, 42, 63, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(426) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 80, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(427) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 38, 42, 80, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(428) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 76, 80, 91, 92, 38, 63, 40, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(429) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 76, 80, 91, 92, 42, 63, 40, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(430) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 38, 80, 40, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(431) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 76, 81, 91, 92, 42, 80, 40, 44, 60, 62, 72, 77, 79, 95, 99 ];
Ns(432) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 38, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(433) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 42, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(434) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 38, 63, 80, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(435) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 42, 63, 80, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(436) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 40, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(437) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 38, 42, 40, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(438) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 63, 80, 40, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(439) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 38, 42, 63, 80, 40, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(440) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(441) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 38, 42, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(442) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^8*sin(theta);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 63, 80, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(443) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 38, 42, 63, 80, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(444) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 38, 40, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(445) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 76, 80, 91, 92, 42, 40, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(446) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 38, 63, 80, 40, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(447) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 76, 81, 91, 92, 42, 63, 80, 40, 44, 60, 62, 65, 72, 77, 79, 95, 99 ];
Ns(448) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 80, 92, 38, 91, 60, 62, 72, 79, 82, 95, 99 ];
Ns(449) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 80, 92, 42, 91, 60, 62, 72, 79, 82, 95, 99 ];
Ns(450) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 81, 92, 38, 63, 80, 91, 60, 62, 72, 79, 82, 95, 99 ];
Ns(451) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 81, 92, 42, 63, 80, 91, 60, 62, 72, 79, 82, 95, 99 ];
Ns(452) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 80, 92, 91, 40, 60, 62, 72, 79, 82, 95, 99 ];
Ns(453) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 91, 40, 60, 62, 72, 79, 82, 95, 99 ];
Ns(454) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 81, 92, 63, 80, 91, 40, 60, 62, 72, 79, 82, 95, 99 ];
Ns(455) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 81, 92, 38, 42, 63, 80, 91, 40, 60, 62, 72, 79, 82, 95, 99 ];
Ns(456) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 91, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(457) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 42, 91, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(458) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 81, 92, 63, 80, 91, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(459) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 81, 92, 38, 42, 63, 80, 91, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(460) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 80, 92, 38, 91, 40, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(461) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 80, 92, 42, 91, 40, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(462) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 81, 92, 38, 63, 80, 91, 40, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(463) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 81, 92, 42, 63, 80, 91, 40, 44, 60, 62, 72, 79, 82, 95, 99 ];
Ns(464) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 91, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(465) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 91, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(466) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 81, 92, 38, 80, 91, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(467) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 81, 92, 42, 80, 91, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(468) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 80, 92, 63, 91, 40, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(469) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 91, 40, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(470) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 81, 92, 80, 91, 40, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(471) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 80, 91, 40, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(472) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^8*sin(theta);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 63, 91, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(473) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 42, 63, 91, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(474) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^8*sin(theta);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 80, 91, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(475) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 42, 80, 91, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(476) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 80, 92, 38, 63, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(477) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 80, 92, 42, 63, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(478) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 81, 92, 38, 80, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(479) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^7*sin(theta)^2;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 81, 92, 42, 80, 91, 40, 44, 60, 62, 65, 72, 79, 82, 95, 99 ];
Ns(480) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^3*sin(theta)^6);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 38, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(481) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 42, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(482) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^3*sin(theta)^6;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 76, 81, 91, 92, 38, 63, 80, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(483) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 76, 81, 91, 92, 42, 63, 80, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(484) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 40, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(485) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 38, 42, 40, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(486) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 76, 81, 91, 92, 63, 80, 40, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(487) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 76, 81, 91, 92, 38, 42, 63, 80, 40, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(488) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^6*sin(theta)^3;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(489) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 38, 42, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(490) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 76, 81, 91, 92, 63, 80, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(491) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^4*sin(theta)^5);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 76, 81, 91, 92, 38, 42, 63, 80, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(492) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 38, 40, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(493) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 73, 76, 80, 91, 92, 42, 40, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(494) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 76, 81, 91, 92, 38, 63, 80, 40, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(495) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 76, 81, 91, 92, 42, 63, 80, 40, 44, 60, 62, 72, 77, 79, 82, 95, 99 ];
Ns(496) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 38, 63, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(497) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 42, 63, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(498) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^4*sin(theta)^5;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 42, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 38, 80, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(499) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 42, 80, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(500) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 63, 40, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(501) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 38, 42, 63, 40, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(502) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = cos(theta)^5*sin(theta)^4;
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 42, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 80, 40, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(503) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 38, 42, 80, 40, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(504) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 63, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(505) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 38, 42, 63, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(506) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^7*sin(theta)^2);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 80, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(507) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^5*sin(theta)^4);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 43, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 38, 42, 80, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(508) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 38, 63, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(509) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 64, 73, 76, 80, 91, 92, 42, 63, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(510) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 41, 42, 43, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 38, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(511) = Get_Exact_String(Id, Os, A, Rx)*cf;
 	
cf = -(cos(theta)^6*sin(theta)^3);
Os =  { Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sx, Sy, Sy, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz, Sz };
Id = [ 38, 39, 43, 53, 57, 58, 59, 63, 64, 76, 81, 91, 92, 42, 80, 40, 44, 60, 62, 65, 72, 77, 79, 82, 95, 99 ];
Ns(512) = Get_Exact_String(Id, Os, A, Rx)*cf;

end

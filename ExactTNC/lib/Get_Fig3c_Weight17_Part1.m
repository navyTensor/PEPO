function [NormM] = Get_Fig3c_Weight17_Part1(A, theta)
%% it contains 512 terms in total
[A0] = InitColTensor(A);

Sx = [0.0, 1.0; 1.0, 0.0];
Sy = [0.0,-1.j; 1.j, 0.0];
Sz = [1.0, 0.0; 0.0,-1.0];

[CL0] = GetLeftEnv(A0, A0);
[CR0] = GetRightEnv(A0, A0);

%% Merge Left String Operators
cf = cos(theta)*sin(theta)^5;
Id = [57,58,72,53,54,59,62];
Os = {Sx,Sx,Sx,Sy,Sy,Sy,Sy};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[CL] = MergeLeftStringOp(CL0, AL, A0)*cf;   %1

cf = cos(theta)^2*sin(theta)^4;
Id = [38,53,57,58,72,54,59,62,39];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %2
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [42,57,58,59,60,72,53,62,41,43];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %3
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [54,57,58,72,42,53,59,62,41,43];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %4
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,42,53,57,58,59,60,72,62,39,41,43];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %5
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [38,53,54,57,58,72,42,59,62,39,41,43];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %6
CL = CL + tCL*cf;

cf = cos(theta)*sin(theta)^5;
Id = [57,58,59,60,72,53,62,42,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %7
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [38,53,57,58,59,60,72,62,39,42,54];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %8
CL = CL + tCL*cf;

cf = -sin(theta)^6;
Id = [57,58,59,60,72,53,54,62,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %9
CL = CL + tCL*cf;

cf = -cos(theta)*sin(theta)^5;
Id = [38,53,57,58,59,60,72,54,62,39,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %10
CL = CL + tCL*cf;

cf = -cos(theta)*sin(theta)^5;
Id = [54,57,58,59,60,72,42,53,62,41,43,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %11
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [42,57,58,72,53,59,62,41,43,61];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %12
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [38,53,54,57,58,59,60,72,42,62,39,41,43,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %13
CL = CL + tCL*cf;

cf = cos(theta)*sin(theta)^5;
Id = [57,58,59,60,72,53,54,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %14
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,42,53,57,58,72,59,62,39,41,43,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %15
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [57,58,72,53,59,62,42,54,61];
Os = {Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %16
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,72,59,62,39,42,54,61];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %17
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [38,53,57,58,59,60,72,54,39,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %18
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [54,57,58,59,60,72,42,53,41,43,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %19
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [42,57,58,72,53,59,41,43,62,63];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %20
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [38,53,54,57,58,59,60,72,42,39,41,43,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %21
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [57,58,72,53,59,42,54,62,63];
Os = {Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %22
CL = CL + tCL*cf;

cf = -cos(theta)^5*sin(theta);
Id = [38,42,53,57,58,72,59,39,41,43,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %23
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,53,57,58,72,59,39,42,54,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %24
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [57,58,72,53,54,59,61,62,63];
Os = {Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %25
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,72,54,59,39,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %26
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [42,57,58,59,60,72,53,41,43,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %27
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [54,57,58,72,42,53,59,41,43,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %28
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,42,53,57,58,59,60,72,39,41,43,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %29
CL = CL + tCL*cf;

cf = cos(theta)^5*sin(theta);
Id = [42,57,58,63,72,53,59,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %30
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [38,53,54,57,58,72,42,59,39,41,43,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %31
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [57,58,62,72,53,54,59,63,64,73];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %32
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [57,58,59,60,72,53,42,54,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %33
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,59,60,72,39,42,54,61,62,63];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %34
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [57,58,59,60,63,72,53,54,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %35
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,59,60,63,72,54,39,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %36
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,62,72,54,59,63,39,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %37
CL = CL + tCL*cf;

cf = cos(theta)^6;
Id = [38,42,53,57,58,63,72,59,39,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %38
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [54,57,58,59,60,63,72,42,53,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %39
CL = CL + tCL*cf;

cf = cos(theta)^2*sin(theta)^4;
Id = [57,58,59,60,62,72,53,63,42,54,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %40
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [42,57,58,59,60,62,72,53,63,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %41
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [54,57,58,62,72,42,53,59,63,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %42
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [38,53,54,57,58,59,60,63,72,42,39,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %43
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [38,42,53,57,58,59,60,62,72,63,39,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %44
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,53,54,57,58,62,72,42,59,63,39,41,43,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %45
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [57,58,63,72,53,59,42,54,64,73];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %46
CL = CL + tCL*cf;

cf = -cos(theta)^5*sin(theta);
Id = [38,53,57,58,63,72,59,39,42,54,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %47
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [38,53,57,58,59,60,62,72,63,39,42,54,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %48
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [57,58,63,72,53,54,59,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %49
CL = CL + tCL*cf;

cf = -cos(theta)*sin(theta)^5;
Id = [57,58,59,60,62,72,53,54,63,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %50
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,53,57,58,63,72,54,59,39,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %51
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [38,53,57,58,59,60,62,72,54,63,39,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %52
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [42,57,58,59,60,63,72,53,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %53
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [54,57,58,63,72,42,53,59,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %54
CL = CL + tCL*cf;

cf = -cos(theta)^2*sin(theta)^4;
Id = [54,57,58,59,60,62,72,42,53,63,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %55
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [42,57,58,62,72,53,59,63,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %56
CL = CL + tCL*cf;

cf = -cos(theta)^5*sin(theta);
Id = [38,42,53,57,58,59,60,63,72,39,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %57
CL = CL + tCL*cf;

cf = cos(theta)^5*sin(theta);
Id = [38,53,54,57,58,63,72,42,59,39,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %58
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [38,53,54,57,58,59,60,62,72,42,63,39,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %59
CL = CL + tCL*cf;

cf = cos(theta)^5*sin(theta);
Id = [38,42,53,57,58,62,72,59,63,39,41,43,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %60
CL = CL + tCL*cf;

cf = cos(theta)^3*sin(theta)^3;
Id = [57,58,59,60,63,72,53,42,54,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %61
CL = CL + tCL*cf;

cf = -cos(theta)^3*sin(theta)^3;
Id = [57,58,62,72,53,59,63,42,54,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sy,Sy,Sy,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %62
CL = CL + tCL*cf;

cf = cos(theta)^4*sin(theta)^2;
Id = [38,53,57,58,59,60,63,72,39,42,54,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sx,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %63
CL = CL + tCL*cf;

cf = -cos(theta)^4*sin(theta)^2;
Id = [38,53,57,58,62,72,59,63,39,42,54,61,64,73];
Os = {Sx,Sx,Sx,Sx,Sx,Sx,Sy,Sy,Sz,Sz,Sz,Sz,Sz,Sz};
[AL] = UpdateLeftTensors(Id, Os, A, A0);
[tCL] = MergeLeftStringOp(CL0, AL, A0);   %64
CL = CL + tCL*cf;

%% Merge Right String Operators
cf = cos(theta)*sin(theta)^4;
Id = [79,76,77];
Os = {Sy,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[CR] = MergeRightStringOp(CR0, AR, A0)*cf;   %1

cf = -sin(theta)^5;
Id = [77,79,78];
Os = {Sy,Sy,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %2
CR = CR + tCR*cf;

cf = cos(theta)*sin(theta)^4;
Id = [77,79,80];
Os = {Sy,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %3
CR = CR + tCR*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [76,77,78,79,80];
Os = {Sz,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %4
CR = CR + tCR*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [76,79,91];
Os = {Sy,Sy,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %5
CR = CR + tCR*cf;

cf = -cos(theta)*sin(theta)^4;
Id = [76,77,79,78,91];
Os = {Sx,Sx,Sy,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %6
CR = CR + tCR*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [76,77,79,80,91];
Os = {Sx,Sx,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %7
CR = CR + tCR*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [76,78,79,80,91];
Os = {Sy,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %8
CR = CR + tCR*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [80,77,81,92];
Os = {Sx,Sy,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %9
CR = CR + tCR*cf;

cf = cos(theta)^2*sin(theta)^3;
Id = [79,80,76,77,81,92];
Os = {Sx,Sy,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %10
CR = CR + tCR*cf;

cf = -cos(theta)*sin(theta)^4;
Id = [79,77,80,78,81,92];
Os = {Sx,Sy,Sy,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %11
CR = CR + tCR*cf;

cf = cos(theta)^3*sin(theta)^2;
Id = [80,76,77,78,81,92];
Os = {Sx,Sz,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %12
CR = CR + tCR*cf;

cf = -cos(theta)^3*sin(theta)^2;
Id = [76,77,80,81,91,92];
Os = {Sx,Sx,Sx,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %13
CR = CR + tCR*cf;

cf = cos(theta)^3*sin(theta)^2;
Id = [79,76,80,81,91,92];
Os = {Sx,Sy,Sy,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %14
CR = CR + tCR*cf;

cf = cos(theta)^4*sin(theta);
Id = [80,76,78,81,91,92];
Os = {Sx,Sy,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %15
CR = CR + tCR*cf;

cf = -cos(theta)^2*sin(theta)^3;
Id = [76,77,79,80,78,81,91,92];
Os = {Sx,Sx,Sx,Sy,Sz,Sz,Sz,Sz};
[AR] = UpdateRightTensors(Id, Os, A, A0);
[tCR] = MergeRightStringOp(CR0, AR, A0);   %16
CR = CR + tCR*cf;

[NormM] = MergeCLCR(CL, CR, A0, A0);

end

function [CL] = GetLeftEnv(A, B)
%   A[2][0] = A4                % A[2][0]: 49-48-47
%   A[2][1] = A2                % A[2][1]: 55
%   A[2][2] = A2                % A[2][2]: 46
%   A[2][3] = A4                % A[2][3]: 45-44-43
%   A[2][4] = A2                % A[2][4]: 54
%   A[2][5] = A2                % A[2][5]: 42
%   A[2][6] = A4                % A[2][6]: 41-40-39
%   A[2][7] = A2                % A[2][7]: 53
%   A[2][8] = A2_5              % A[2][8]: 38-37-52-56-57

[CL] = LeftMove1st(A, B);
[CL] = LeftMoveOdd(2, CL, A, B);

Da = size(A{3,1},2);
Db = size(B{3,1},2);
D2 = Da*Db;
CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
CL = ncon({CL, conj(B{3,1}), A{3,1}}, {[1,3,2,4,-5,-6], [5,1,2,-1,-3], [5,3,4,-2,-4]}, [1,2,3,4,5]);
CL = ncon({CL, conj(B{3,2}), A{3,2}, conj(B{3,3}), A{3,3}}, ...
     {[1,2,4,5,-5,-6], [3,1,-1], [3,2,-2], [6,4,-3], [6,5,-4]}, [1,2,3,4,5,6]);

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
CL = ncon({CL, conj(B{3,4}), A{3,4}}, {[-1,1,3,2,4,-6], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);

end

function [NormM] = MergeCLCR(CL, CR, A, B)

Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;
CL = reshape(CL, [Db, Da, Db, Da, D2, D2]);
CL = reshape(ncon({CL, conj(B{4,2}), A{4,2}, conj(B{4,3}), A{4,3}}, ...
     {[1,3,2,4,-5,-6], [5,1,2,-1,6], [5,3,4,-2,7], [8,6,-3], [8,7,-4]}, [1,2,3,4,5,6,7,8]),[D2,D2*D2*D2]);

C5 = reshape(ncon({conj(B{4,1}), A{4,1}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);
CL = C5 * CL;

CR = ncon({CR, conj(B{5,4}), A{5,4}}, {[-1,1,3,2,4,-6], [5,-2,-4,1,2], [5,-3,-5,3,4]}, [1,2,3,4,5]);

CR = reshape(CR, [Db, Da, Db, Da, D2, D2]);
CR = ncon({CR, conj(B{5,2}), A{5,2}, conj(B{5,3}), A{5,3}}, ...
     {[1,2,4,5,-5,-6], [3,-1,1], [3,-2,2], [6,-3,4], [6,-4,5]}, [1,2,3,4,5,6]);
CR = ncon({CR, conj(B{5,1}), A{5,1}}, {[1,3,2,4,-5,-6], [5,-1,-3,1,2], [5,-2,-4,3,4]}, [1,2,3,4,5]);

NormM = CL(:).'*CR(:);

end

function [CL] = MergeLeftStringOp(CL, A, B)

tic;
Da = size(A{3,1},2);
Db = size(B{3,1},2);
D2 = Da*Db;

CL = ncon({CL, conj(B{3,5}), A{3,5}, conj(B{3,6}), A{3,6}}, ...
     {[-1,1,2,4,5,-6], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [4,5,6,1,2,3]);

CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
CL = ncon({CL, conj(B{3,7}), A{3,7}, conj(B{3,8}), A{3,8}}, ...
     {[-1,-2,1,3,2,4], [5,1,2,6,-5], [5,3,4,7,-6], [8,6,-3], [8,7,-4]}, [1,2,3,4,5,6,7,8]);

CL = reshape(CL, [D2*D2*D2,D2]);
C5 = reshape(ncon({conj(B{3,9}), A{3,9}}, {[1,-1,-3], [1,-2,-4]}, [1]),[D2,D2]);
CL = CL * C5;

CL = reshape(CL, [D2, D2, Db, Da, Db, Da]);
CL = ncon({CL, conj(B{4,8}), A{4,8}}, {[-1,-2,1,3,2,4], [5,1,2,-3,-5], [5,3,4,-4,-6]}, [1,2,3,4,5]);
CL = ncon({CL, conj(B{4,7}), A{4,7}, conj(B{4,9}), A{4,9}}, ...
     {[-1,-2,1,2,4,5], [3,1,-3], [3,2,-4], [6,4,-5], [6,5,-6]}, [1,2,3,4,5,6]);

CL = reshape(CL, [D2, Db, Da, Db, Da, D2]);
CL = ncon({CL, conj(B{4,5}), A{4,5}}, {[-1,1,3,2,4,-6], [5,1,2,-2,-4], [5,3,4,-3,-5]}, [1,2,3,4,5]);
CL = ncon({CL, conj(B{4,4}), A{4,4}, conj(B{4,6}), A{4,6}}, ...
     {[-1,1,2,4,5,-6], [3,1,-2], [3,2,-3], [6,4,-4], [6,5,-5]}, [1,2,3,4,5,6]);
toc;

end
 
function [CR] = GetRightEnv(A, B)

[CR] = RightMove1st(A, B);
[CR] = RightMoveOdd(6, CR, A, B);

end

function [CR] = MergeRightStringOp(CR, A, B)

tic;
Da = size(A{5,2},2);
Db = size(B{5,2},2);
D2 = Da*Db;
CR = reshape(CR, [D2*D2*D2, D2]);
C5 = reshape(ncon({conj(B{5,9}), A{5,9}}, {[1,-3,-1], [1,-4,-2]}, [1]),[D2,D2]);
CR = CR*C5;

CR = reshape(CR, [D2, D2, Db, Da, Db, Da]);
CR = ncon({CR, conj(B{5,7}), A{5,7}, conj(B{5,8}), A{5,8}}, {[-1,-2,3,5,6,7], [8,-3,-5,2,6], [8,-4,-6,4,7], [1,2,3], [1,4,5]}, [3,5,1,2,6,4,7,8]);

CR = reshape(CR, [D2, Db, Da, Db, Da, D2]);
CR = ncon({CR, conj(B{5,5}), A{5,5}, conj(B{5,6}), A{5,6}}, ...
     {[-1,1,2,4,5,-6], [3,-2,1], [3,-3,2], [6,-4,4], [6,-5,5]}, [1,2,3,4,5,6]);    
toc;

end

function [AL] = UpdateLeftTensors(Id, Os, A, Ac)

for i = 1 : numel(Os)
    m = Id(i);
    if( ndims(A{m}) == 2 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(A{m}) == 3 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(A{m}) == 4 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
    end
end

D = size(A{1},2);
AL = Ac;
AL{3,6} = A{43};                                                                          % A{2,5}: 42
AL{3,7} = reshape(ncon({A{42}, A{40}, A{41}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{2,6}: 41-40-39
AL{3,8} = A{54};                                                                          % A{2,7}: 53
AL{3,9} = reshape(ncon({A{39}, A{38}, A{53}, A{57}, A{58}}, {[-1,-6,1], [-2,1,2], ...
          [-3,2,3], [-4,3,4], [-5,4,-7]}, [1,2,4,3]),[2^5,D,D]);                          % A{2,8}: 38-37-52-56-57

AL{4,5} = reshape(ncon({A{65}, A{63}, A{64}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{3,4}: 64-63-62
AL{4,6} = A{73};                                                                          % A{3,5}: 72
AL{4,7} = A{62};                                                                          % A{3,6}: 61
AL{4,8} = reshape(ncon({A{61}, A{59}, A{60}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{3,7}: 60-59-58
AL{4,9} = A{72};                                                                          % A{3,8}: 71

end

function [AR] = UpdateRightTensors(Id, Os, A, Ac)

for i = 1 : numel(Os)
    m = Id(i);
    if( ndims(A{m}) == 2 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2]} );
    elseif( ndims(A{m}) == 3 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3]} );
    elseif( ndims(A{m}) == 4 )
        A{m} = ncon({Os{i}, A{m}}, {[-1,1], [1,-2,-3,-4]} );               
    end
end

D = size(A{1},2);
AR = Ac;
AR{5,6} = A{81};                                                                          % A{4,5}: 80
AR{5,7} = reshape(ncon({A{80}, A{78}, A{79}}, {[-1,1,-4,-6], [-3,2,-5,-7], ...
          [-2,1,2]}, [1,2]),[2^3,D,D,D,D]);                                               % A{4,6}: 79-78-77
AR{5,8} = A{92};                                                                          % A{4,7}: 91
AR{5,9} = reshape(ncon({A{77}, A{76}, A{91}, A{95}, A{96}}, {[-1,-6,1], [-2,1,2], ...
          [-3,2,3], [-4,3,4], [-5,4,-7]}, [1,2,4,3]),[2^5,D,D]);                          % A{4,8}: 76-75-90-94-95

end

function [A, Lam, TErr, Coef] = SU_QR_PEPS(D, A, Lam, Rx, Rzz)

LamH1 = cell(25,1);
LamH2 = cell(26,1);
LamH3 = cell(26,1);
LamH4 = cell(25,1);
LamV1 = cell(14,1);
LamV2 = cell(14,1);
LamV3 = cell(14,1);
if( isempty(Lam) )
    D0 = size(A{1},2);
    for i = 1 : 25
        LamH1{i} = ones(D0,1);
        LamH4{i} = ones(D0,1);
    end
    for i = 1 : 26
        LamH2{i} = ones(D0,1);
        LamH3{i} = ones(D0,1);
    end
    for i = 1 : 14
        LamV1{i} = ones(D0,1);
        LamV2{i} = ones(D0,1);
        LamV3{i} = ones(D0,1);
    end
else
    [LamH1{:}, LamH2{:}, LamH3{:}, LamH4{:}, LamV1{:}, LamV2{:}, LamV3{:}] = deal(Lam{1:25}, Lam{26:51}, Lam{52:77}, Lam{78:102}, Lam{103:116}, Lam{117:130}, Lam{131:144});
end

if( ~isempty(Rx) )
    for i = [13,113]
        A{i+1} = ncon({A{i+1}, Rx}, {[1,-2], [-1,1]});
    end

    for i = [0,1,2,3,5,6,7,9,10,11,14,15,16,17,18,19,21,23,25,27,29,31,32,33,34,35,36,...
            37,38,40,42,44,46,48,50,51,52,53,54,55,56,57,59,61,63,65,67,69,70,71,72,73,...
            74,75,76,78,80,82,84,86,88,89,90,91,92,93,94,95,97,99,101,103,105,107,108,...
            109,110,111,112,115,116,117,119,120,121,123,124,125,126]
        A{i+1} = ncon({A{i+1}, Rx}, {[1,-2,-3], [-1,1]});
    end

    for i = [4,8,12,20,22,24,26,28,30,39,41,43,45,47,49,58,60,62,64,66,68,77,79,81,83,85,87,96,98,100,102,104,106,114,118,122]
        A{i+1} = ncon({A{i+1}, Rx}, {[1,-2,-3,-4], [-1,1]});
    end
end

TErH1 = zeros(25, 1);
TErH2 = zeros(26, 1);
TErH3 = zeros(26, 1);
TErH4 = zeros(25, 1);
TErV1 = zeros(14, 1);
TErV2 = zeros(14, 1);
TErV3 = zeros(14, 1);

CoefH1 = zeros(25, 1);
CoefH2 = zeros(26, 1);
CoefH3 = zeros(26, 1);
CoefH4 = zeros(25, 1);
CoefV1 = zeros(14, 1);
CoefV2 = zeros(14, 1);
CoefV3 = zeros(14, 1);

[A{13},  A{14},  LamH1{1},  TErH1(1), CoefH1(1)] = update_A3_B1(2, D, A{13}, A{14}, {LamV1{1}, LamH1{2}}, LamH1{1}, Rzz);
[A{13},  A{18},  LamH1{2},  TErH1(2), CoefH1(2)] = update_A3_B2(3, D, A{13}, A{18}, {LamV1{1}, LamH1{1}}, LamH1{3}, LamH1{2}, Rzz);
[A{31},  A{18},  LamH1{3},  TErH1(3), CoefH1(3)] = update_A3_B2(2, D, A{31}, A{18}, {LamV1{2}, LamH1{4}}, LamH1{2}, LamH1{3}, Rzz);
[A{31},  A{32},  LamH1{4},  TErH1(4), CoefH1(4)] = update_A3_B2(3, D, A{31}, A{32}, {LamV1{2}, LamH1{3}}, LamH1{5}, LamH1{4}, Rzz);
[A{32},  A{33},  LamH1{5},  TErH1(5), CoefH1(5)] = update_A2_B2(D, A{32}, A{33}, LamH1{4}, LamH1{6}, LamH1{5}, Rzz);
[A{33},  A{37},  LamH1{6},  TErH1(6), CoefH1(6)] = update_A2_B2(D, A{33}, A{37}, LamH1{5}, LamH1{7}, LamH1{6}, Rzz);
[A{37},  A{52},  LamH1{7},  TErH1(7), CoefH1(7)] = update_A2_B2(D, A{37}, A{52}, LamH1{6}, LamH1{8}, LamH1{7}, Rzz);
[A{52},  A{51},  LamH1{8},  TErH1(8), CoefH1(8)] = update_A2_B2(D, A{52}, A{51}, LamH1{7}, LamH1{9}, LamH1{8}, Rzz);

[A{50},  A{51},  LamH1{9},  TErH1(9), CoefH1(9)] = update_A3_B2(2, D, A{50}, A{51}, {LamV1{3}, LamH1{10}}, LamH1{8}, LamH1{9}, Rzz);
[A{50},  A{56},  LamH1{10}, TErH1(10), CoefH1(10)] = update_A3_B2(3, D, A{50}, A{56}, {LamV1{3}, LamH1{9}}, LamH1{11}, LamH1{10}, Rzz);
[A{69},  A{56},  LamH1{11}, TErH1(11), CoefH1(11)] = update_A3_B2(2, D, A{69}, A{56}, {LamV1{4}, LamH1{12}}, LamH1{10}, LamH1{11}, Rzz);
[A{69},  A{70},  LamH1{12}, TErH1(12), CoefH1(12)] = update_A3_B2(3, D, A{69}, A{70}, {LamV1{4}, LamH1{11}}, LamH1{13}, LamH1{12}, Rzz);
[A{70},  A{71},  LamH1{13}, TErH1(13), CoefH1(13)] = update_A2_B2(D, A{70}, A{71}, LamH1{12}, LamH1{14}, LamH1{13}, Rzz);
[A{71},  A{75},  LamH1{14}, TErH1(14), CoefH1(14)] = update_A2_B2(D, A{71}, A{75}, LamH1{13}, LamH1{15}, LamH1{14}, Rzz);
[A{75},  A{90},  LamH1{15}, TErH1(15), CoefH1(15)] = update_A2_B2(D, A{75}, A{90}, LamH1{14}, LamH1{16}, LamH1{15}, Rzz);
[A{90},  A{89},  LamH1{16}, TErH1(16), CoefH1(16)] = update_A2_B2(D, A{90}, A{89}, LamH1{15}, LamH1{17}, LamH1{16}, Rzz);
[A{88},  A{89},  LamH1{17}, TErH1(17), CoefH1(17)] = update_A3_B2(2, D, A{88}, A{89}, {LamV1{5}, LamH1{18}}, LamH1{16}, LamH1{17}, Rzz);
[A{88},  A{94},  LamH1{18}, TErH1(18), CoefH1(18)] = update_A3_B2(3, D, A{88}, A{94}, {LamV1{5}, LamH1{17}}, LamH1{19}, LamH1{18}, Rzz);
[A{107}, A{94},  LamH1{19}, TErH1(19), CoefH1(19)] = update_A3_B2(2, D, A{107}, A{94}, {LamV1{6}, LamH1{20}}, LamH1{18}, LamH1{19}, Rzz);
[A{107}, A{108}, LamH1{20}, TErH1(20), CoefH1(20)] = update_A3_B2(3, D, A{107}, A{108}, {LamV1{6}, LamH1{19}}, LamH1{21}, LamH1{20}, Rzz);
[A{108}, A{109}, LamH1{21}, TErH1(21), CoefH1(21)] = update_A2_B2(D, A{108}, A{109}, LamH1{20}, LamH1{22}, LamH1{21}, Rzz);
[A{109}, A{113}, LamH1{22}, TErH1(22), CoefH1(22)] = update_A2_B2(D, A{109}, A{113}, LamH1{21}, LamH1{23}, LamH1{22}, Rzz);
[A{113}, A{127}, LamH1{23}, TErH1(23), CoefH1(23)] = update_A2_B2(D, A{113}, A{127}, LamH1{22}, LamH1{24}, LamH1{23}, Rzz);
[A{127}, A{126}, LamH1{24}, TErH1(24), CoefH1(24)] = update_A2_B2(D, A{127}, A{126}, LamH1{23}, LamH1{25}, LamH1{24}, Rzz);
[A{126}, A{125}, LamH1{25}, TErH1(25), CoefH1(25)] = update_A2_B2(D, A{126}, A{125}, LamH1{24}, LamV1{7}, LamH1{25}, Rzz);

[A{13},  A{12},  LamV1{1},  TErV1(1), CoefV1(1)] = update_A3_B2(1, D, A{13}, A{12}, {LamH1{1}, LamH1{2}}, LamV1{8}, LamV1{1}, Rzz, "dn");
[A{31},  A{30},  LamV1{2},  TErV1(2), CoefV1(2)] = update_A3_B2(1, D, A{31}, A{30}, {LamH1{3}, LamH1{4}}, LamV1{9}, LamV1{2}, Rzz, "dn");
[A{50},  A{49},  LamV1{3},  TErV1(3), CoefV1(3)] = update_A3_B2(1, D, A{50}, A{49}, {LamH1{9}, LamH1{10}}, LamV1{10}, LamV1{3}, Rzz, "dn");
[A{69},  A{68},  LamV1{4},  TErV1(4), CoefV1(4)] = update_A3_B2(1, D, A{69}, A{68}, {LamH1{11}, LamH1{12}}, LamV1{11}, LamV1{4}, Rzz, "dn");
[A{88},  A{87},  LamV1{5},  TErV1(5), CoefV1(5)] = update_A3_B2(1, D, A{88}, A{87}, {LamH1{17}, LamH1{18}}, LamV1{12}, LamV1{5}, Rzz, "dn");
[A{107}, A{106}, LamV1{6},  TErV1(6), CoefV1(6)] = update_A3_B2(1, D, A{107}, A{106}, {LamH1{19}, LamH1{20}}, LamV1{13}, LamV1{6}, Rzz, "dn");
[A{125}, A{124}, LamV1{7},  TErV1(7), CoefV1(7)] = update_A2_B2(D, A{125}, A{124}, LamH1{25}, LamV1{14}, LamV1{7}, Rzz);

[A{12},  A{11},  LamV1{8},  TErV1(8), CoefV1(8)] = update_A2_B2(D, A{12}, A{11}, LamV1{1}, LamH2{1}, LamV1{8}, Rzz);
[A{29},  A{30},  LamV1{9},  TErV1(9), CoefV1(9)] = update_A3_B2(1, D, A{29}, A{30}, {LamH2{6}, LamH2{7}}, LamV1{2}, LamV1{9}, Rzz);
[A{48},  A{49},  LamV1{10}, TErV1(10), CoefV1(10)] = update_A3_B2(1, D, A{48}, A{49}, {LamH2{8}, LamH2{9}}, LamV1{3}, LamV1{10}, Rzz);
[A{67},  A{68},  LamV1{11}, TErV1(11), CoefV1(11)] = update_A3_B2(1, D, A{67}, A{68}, {LamH2{14}, LamH2{15}}, LamV1{4}, LamV1{11}, Rzz);
[A{86},  A{87},  LamV1{12}, TErV1(12), CoefV1(12)] = update_A3_B2(1, D, A{86}, A{87}, {LamH2{16}, LamH2{17}}, LamV1{5}, LamV1{12}, Rzz);
[A{105}, A{106}, LamV1{13}, TErV1(13), CoefV1(13)] = update_A3_B2(1, D, A{105}, A{106}, {LamH2{22}, LamH2{23}}, LamV1{6}, LamV1{13}, Rzz);
[A{123}, A{124}, LamV1{14}, TErV1(14), CoefV1(14)] = update_A3_B2(1, D, A{123}, A{124}, {LamH2{24}, LamH2{25}}, LamV1{7}, LamV1{14}, Rzz);

[A{11},  A{10},   LamH2{1}, TErH2(1), CoefH2(1)] = update_A2_B2(D, A{11}, A{10}, LamV1{8}, LamH2{2}, LamH2{1}, Rzz);
[A{9},   A{10},   LamH2{2}, TErH2(2), CoefH2(2)] = update_A3_B2(2, D, A{9}, A{10}, {LamV2{1}, LamH2{3}}, LamH2{1}, LamH2{2}, Rzz);
[A{9},   A{17},  LamH2{3},  TErH2(3), CoefH2(3)] = update_A3_B2(3, D, A{9}, A{17}, {LamV2{1}, LamH2{2}}, LamH2{4}, LamH2{3}, Rzz);
[A{27},  A{17},  LamH2{4},  TErH2(4), CoefH2(4)] = update_A3_B2(2, D, A{27}, A{17}, {LamV2{2}, LamH2{5}}, LamH2{3}, LamH2{4}, Rzz);
[A{27},  A{28},  LamH2{5},  TErH2(5), CoefH2(5)] = update_A3_B2(3, D, A{27}, A{28}, {LamV2{2}, LamH2{4}}, LamH2{6}, LamH2{5}, Rzz);
[A{29},  A{28},  LamH2{6},  TErH2(6), CoefH2(6)] = update_A3_B2(2, D, A{29}, A{28}, {LamV1{9}, LamH2{7}}, LamH2{5}, LamH2{6}, Rzz);
[A{29},  A{36},  LamH2{7},  TErH2(7), CoefH2(7)] = update_A3_B2(3, D, A{29}, A{36}, {LamV1{9}, LamH2{6}}, LamH2{8}, LamH2{7}, Rzz);
[A{48},  A{36},  LamH2{8},  TErH2(8), CoefH2(8)] = update_A3_B2(2, D, A{48}, A{36}, {LamV1{10}, LamH2{9}}, LamH2{7}, LamH2{8}, Rzz);
[A{48},  A{47},  LamH2{9},  TErH2(9), CoefH2(9)] = update_A3_B2(3, D, A{48}, A{47}, {LamV1{10}, LamH2{8}}, LamH2{10}, LamH2{9}, Rzz);
[A{46},  A{47},  LamH2{10}, TErH2(10), CoefH2(10)] = update_A3_B2(2, D, A{46}, A{47}, {LamV2{3}, LamH2{11}}, LamH2{9}, LamH2{10}, Rzz);
[A{46},  A{55},  LamH2{11}, TErH2(11), CoefH2(11)] = update_A3_B2(3, D, A{46}, A{55}, {LamV2{3}, LamH2{10}}, LamH2{12}, LamH2{11}, Rzz);
[A{65},  A{55},  LamH2{12}, TErH2(12), CoefH2(12)] = update_A3_B2(2, D, A{65}, A{55}, {LamV2{4}, LamH2{13}}, LamH2{11}, LamH2{12}, Rzz);
[A{65},  A{66},  LamH2{13}, TErH2(13), CoefH2(13)] = update_A3_B2(3, D, A{65}, A{66}, {LamV2{4}, LamH2{12}}, LamH2{14}, LamH2{13}, Rzz);
[A{67},  A{66},  LamH2{14}, TErH2(14), CoefH2(14)] = update_A3_B2(2, D, A{67}, A{66}, {LamV1{11}, LamH2{15}}, LamH2{13}, LamH2{14}, Rzz);
[A{67},  A{74},  LamH2{15}, TErH2(15), CoefH2(15)] = update_A3_B2(3, D, A{67}, A{74}, {LamV1{11}, LamH2{14}}, LamH2{16}, LamH2{15}, Rzz);
[A{86},  A{74},  LamH2{16}, TErH2(16), CoefH2(16)] = update_A3_B2(2, D, A{86}, A{74}, {LamV1{12}, LamH2{17}}, LamH2{15}, LamH2{16}, Rzz);
[A{86},  A{85},  LamH2{17}, TErH2(17), CoefH2(17)] = update_A3_B2(3, D, A{86}, A{85}, {LamV1{12}, LamH2{16}}, LamH2{18}, LamH2{17}, Rzz);
[A{84},  A{85},  LamH2{18}, TErH2(18), CoefH2(18)] = update_A3_B2(2, D, A{84}, A{85}, {LamV2{5}, LamH2{19}}, LamH2{17}, LamH2{18}, Rzz);
[A{84},  A{93},  LamH2{19}, TErH2(19), CoefH2(19)] = update_A3_B2(3, D, A{84}, A{93}, {LamV2{5}, LamH2{18}}, LamH2{20}, LamH2{19}, Rzz);
[A{103}, A{93},  LamH2{20}, TErH2(20), CoefH2(20)] = update_A3_B2(2, D, A{103}, A{93}, {LamV2{6}, LamH2{21}}, LamH2{19}, LamH2{20}, Rzz);
[A{103}, A{104}, LamH2{21}, TErH2(21), CoefH2(21)] = update_A3_B2(3, D, A{103}, A{104}, {LamV2{6}, LamH2{20}}, LamH2{22}, LamH2{21}, Rzz);
[A{105}, A{104}, LamH2{22}, TErH2(22), CoefH2(22)] = update_A3_B2(2, D, A{105}, A{104}, {LamV1{13}, LamH2{23}}, LamH2{21}, LamH2{22}, Rzz);
[A{105}, A{112}, LamH2{23}, TErH2(23), CoefH2(23)] = update_A3_B2(3, D, A{105}, A{112}, {LamV1{13}, LamH2{22}}, LamH2{24}, LamH2{23}, Rzz);
[A{123}, A{112}, LamH2{24}, TErH2(24), CoefH2(24)] = update_A3_B2(2, D, A{123}, A{112}, {LamV1{14}, LamH2{25}}, LamH2{23}, LamH2{24}, Rzz);
[A{123}, A{122}, LamH2{25}, TErH2(25), CoefH2(25)] = update_A3_B2(3, D, A{123}, A{122}, {LamV1{14}, LamH2{24}}, LamH2{26}, LamH2{25}, Rzz);
[A{122}, A{121}, LamH2{26}, TErH2(26), CoefH2(26)] = update_A2_B2(D, A{122}, A{121}, LamH2{25}, LamV2{7}, LamH2{26}, Rzz);

[A{9},   A{8},   LamV2{1},  TErV2(1), CoefV2(1)] = update_A3_B2(1, D, A{9}, A{8}, {LamH2{2}, LamH2{3}}, LamV2{8}, LamV2{1}, Rzz, "dn");
[A{27},  A{26},  LamV2{2},  TErV2(2), CoefV2(2)] = update_A3_B2(1, D, A{27}, A{26}, {LamH2{4}, LamH2{5}}, LamV2{9}, LamV2{2}, Rzz, "dn");
[A{46},  A{45},  LamV2{3},  TErV2(3), CoefV2(3)] = update_A3_B2(1, D, A{46}, A{45}, {LamH2{10}, LamH2{11}}, LamV2{10}, LamV2{3}, Rzz, "dn");
[A{65},  A{64},  LamV2{4},  TErV2(4), CoefV2(4)] = update_A3_B2(1, D, A{65}, A{64}, {LamH2{12}, LamH2{13}}, LamV2{11}, LamV2{4}, Rzz, "dn");
[A{84},  A{83},  LamV2{5},  TErV2(5), CoefV2(5)] = update_A3_B2(1, D, A{84}, A{83}, {LamH2{18}, LamH2{19}}, LamV2{12}, LamV2{5}, Rzz, "dn");
[A{103}, A{102}, LamV2{6},  TErV2(6), CoefV2(6)] = update_A3_B2(1, D, A{103}, A{102}, {LamH2{20}, LamH2{21}}, LamV2{13}, LamV2{6}, Rzz, "dn");
[A{121}, A{120}, LamV2{7},  TErV2(7), CoefV2(7)] = update_A2_B2(D, A{121}, A{120}, LamH2{26}, LamV2{14}, LamV2{7}, Rzz);
[A{8},   A{7},   LamV2{8},  TErV2(8), CoefV2(8)] = update_A2_B2(D, A{8}, A{7}, LamV2{1}, LamH3{1}, LamV2{8}, Rzz);
[A{25},  A{26},  LamV2{9},  TErV2(9), CoefV2(9)] = update_A3_B2(1, D, A{25}, A{26}, {LamH3{6}, LamH3{7}}, LamV2{2}, LamV2{9}, Rzz);
[A{44},  A{45},  LamV2{10}, TErV2(10), CoefV2(10)] = update_A3_B2(1, D, A{44}, A{45}, {LamH3{8}, LamH3{9}}, LamV2{3}, LamV2{10}, Rzz);
[A{63},  A{64},  LamV2{11}, TErV2(11), CoefV2(11)] = update_A3_B2(1, D, A{63}, A{64}, {LamH3{14}, LamH3{15}}, LamV2{4}, LamV2{11}, Rzz);
[A{82},  A{83},  LamV2{12}, TErV2(12), CoefV2(12)] = update_A3_B2(1, D, A{82}, A{83}, {LamH3{16}, LamH3{17}}, LamV2{5}, LamV2{12}, Rzz);
[A{101}, A{102}, LamV2{13}, TErV2(13), CoefV2(13)] = update_A3_B2(1, D, A{101}, A{102}, {LamH3{22}, LamH3{23}}, LamV2{6}, LamV2{13}, Rzz);
[A{119}, A{120}, LamV2{14}, TErV2(14), CoefV2(14)] = update_A3_B2(1, D, A{119}, A{120}, {LamH3{24}, LamH3{25}}, LamV2{7}, LamV2{14}, Rzz);

[A{7},   A{6},   LamH3{1},  TErH3(1), CoefH3(1)] = update_A2_B2(D, A{7}, A{6}, LamV2{8}, LamH3{2}, LamH3{1}, Rzz);
[A{5},   A{6},   LamH3{2},  TErH3(2), CoefH3(2)] = update_A3_B2(2, D, A{5}, A{6}, {LamV3{1}, LamH3{3}}, LamH3{1}, LamH3{2}, Rzz);
[A{5},   A{16},  LamH3{3},  TErH3(3), CoefH3(3)] = update_A3_B2(3, D, A{5}, A{16}, {LamV3{1}, LamH3{2}}, LamH3{4}, LamH3{3}, Rzz);
[A{23},  A{16},  LamH3{4},  TErH3(4), CoefH3(4)] = update_A3_B2(2, D, A{23}, A{16}, {LamV3{2}, LamH3{5}}, LamH3{3}, LamH3{4}, Rzz);
[A{23},  A{24},  LamH3{5},  TErH3(5), CoefH3(5)] = update_A3_B2(3, D, A{23}, A{24}, {LamV3{2}, LamH3{4}}, LamH3{6}, LamH3{5}, Rzz);
[A{25},  A{24},  LamH3{6},  TErH3(6), CoefH3(6)] = update_A3_B2(2, D, A{25}, A{24}, {LamV2{9}, LamH3{7}}, LamH3{5}, LamH3{6}, Rzz);
[A{25},  A{35},  LamH3{7},  TErH3(7), CoefH3(7)] = update_A3_B2(3, D, A{25}, A{35}, {LamV2{9}, LamH3{6}}, LamH3{8}, LamH3{7}, Rzz);
[A{44},  A{35},  LamH3{8},  TErH3(8), CoefH3(8)] = update_A3_B2(2, D, A{44}, A{35}, {LamV2{10}, LamH3{9}}, LamH3{7}, LamH3{8}, Rzz);
[A{44},  A{43},  LamH3{9},  TErH3(9), CoefH3(9)] = update_A3_B2(3, D, A{44}, A{43}, {LamV2{10}, LamH3{8}}, LamH3{10}, LamH3{9}, Rzz);
[A{42},  A{43},  LamH3{10}, TErH3(10), CoefH3(10)] = update_A3_B2(2, D, A{42}, A{43}, {LamV3{3}, LamH3{11}}, LamH3{9}, LamH3{10}, Rzz);
[A{42},  A{54},  LamH3{11}, TErH3(11), CoefH3(11)] = update_A3_B2(3, D, A{42}, A{54}, {LamV3{3}, LamH3{10}}, LamH3{12}, LamH3{11}, Rzz);
[A{61},  A{54},  LamH3{12}, TErH3(12), CoefH3(12)] = update_A3_B2(2, D, A{61}, A{54}, {LamV3{4}, LamH3{13}}, LamH3{11}, LamH3{12}, Rzz);
[A{61},  A{62},  LamH3{13}, TErH3(13), CoefH3(13)] = update_A3_B2(3, D, A{61}, A{62}, {LamV3{4}, LamH3{12}}, LamH3{14}, LamH3{13}, Rzz);
[A{63},  A{62},  LamH3{14}, TErH3(14), CoefH3(14)] = update_A3_B2(2, D, A{63}, A{62}, {LamV2{11}, LamH3{15}}, LamH3{13}, LamH3{14}, Rzz);
[A{63},  A{73},  LamH3{15}, TErH3(15), CoefH3(15)] = update_A3_B2(3, D, A{63}, A{73}, {LamV2{11}, LamH3{14}}, LamH3{16}, LamH3{15}, Rzz);
[A{82},  A{73},  LamH3{16}, TErH3(16), CoefH3(16)] = update_A3_B2(2, D, A{82}, A{73}, {LamV2{12}, LamH3{17}}, LamH3{15}, LamH3{16}, Rzz);
[A{82},  A{81},  LamH3{17}, TErH3(17), CoefH3(17)] = update_A3_B2(3, D, A{82}, A{81}, {LamV2{12}, LamH3{16}}, LamH3{18}, LamH3{17}, Rzz);
[A{80},  A{81},  LamH3{18}, TErH3(18), CoefH3(18)] = update_A3_B2(2, D, A{80}, A{81}, {LamV3{5}, LamH3{19}}, LamH3{17}, LamH3{18}, Rzz);
[A{80},  A{92},  LamH3{19}, TErH3(19), CoefH3(19)] = update_A3_B2(3, D, A{80}, A{92}, {LamV3{5}, LamH3{18}}, LamH3{20}, LamH3{19}, Rzz);
[A{99},  A{92},  LamH3{20}, TErH3(20), CoefH3(20)] = update_A3_B2(2, D, A{99}, A{92}, {LamV3{6}, LamH3{21}}, LamH3{19}, LamH3{20}, Rzz);
[A{99},  A{100}, LamH3{21}, TErH3(21), CoefH3(21)] = update_A3_B2(3, D, A{99}, A{100}, {LamV3{6}, LamH3{20}}, LamH3{22}, LamH3{21}, Rzz);
[A{101}, A{100}, LamH3{22}, TErH3(22), CoefH3(22)] = update_A3_B2(2, D, A{101}, A{100}, {LamV2{13}, LamH3{23}}, LamH3{21}, LamH3{22}, Rzz);
[A{101}, A{111}, LamH3{23}, TErH3(23), CoefH3(23)] = update_A3_B2(3, D, A{101}, A{111}, {LamV2{13}, LamH3{22}}, LamH3{24}, LamH3{23}, Rzz);
[A{119}, A{111}, LamH3{24}, TErH3(24), CoefH3(24)] = update_A3_B2(2, D, A{119}, A{111}, {LamV2{14}, LamH3{25}}, LamH3{23}, LamH3{24}, Rzz);
[A{119}, A{118}, LamH3{25}, TErH3(25), CoefH3(25)] = update_A3_B2(3, D, A{119}, A{118}, {LamV2{14}, LamH3{24}}, LamH3{26}, LamH3{25}, Rzz);
[A{118}, A{117}, LamH3{26}, TErH3(26), CoefH3(26)] = update_A2_B2(D, A{118}, A{117}, LamH3{25}, LamV3{7}, LamH3{26}, Rzz);

[A{5},   A{4},   LamV3{1},  TErV3(1), CoefV3(1)] = update_A3_B2(1, D, A{5}, A{4}, {LamH3{2}, LamH3{3}}, LamV3{8}, LamV3{1}, Rzz, "dn");
[A{23},  A{22},  LamV3{2},  TErV3(2), CoefV3(2)] = update_A3_B2(1, D, A{23}, A{22}, {LamH3{4}, LamH3{5}}, LamV3{9}, LamV3{2}, Rzz, "dn");
[A{42},  A{41},  LamV3{3},  TErV3(3), CoefV3(3)] = update_A3_B2(1, D, A{42}, A{41}, {LamH3{10}, LamH3{11}}, LamV3{10}, LamV3{3}, Rzz, "dn");
[A{61},  A{60},  LamV3{4},  TErV3(4), CoefV3(4)] = update_A3_B2(1, D, A{61}, A{60}, {LamH3{12}, LamH3{13}}, LamV3{11}, LamV3{4}, Rzz, "dn");
[A{80},  A{79},  LamV3{5},  TErV3(5), CoefV3(5)] = update_A3_B2(1, D, A{80}, A{79}, {LamH3{18}, LamH3{19}}, LamV3{12}, LamV3{5}, Rzz, "dn");
[A{99},  A{98},  LamV3{6},  TErV3(6), CoefV3(6)] = update_A3_B2(1, D, A{99}, A{98}, {LamH3{20}, LamH3{21}}, LamV3{13}, LamV3{6}, Rzz, "dn");
[A{117}, A{116}, LamV3{7},  TErV3(7), CoefV3(7)] = update_A2_B2(D, A{117}, A{116}, LamH3{26}, LamV3{14}, LamV3{7}, Rzz);
[A{4},   A{3},   LamV3{8},  TErV3(8), CoefV3(8)] = update_A2_B2(D, A{4}, A{3}, LamV3{1}, LamH4{1}, LamV3{8}, Rzz);
[A{21},  A{22},  LamV3{9},  TErV3(9), CoefV3(9)] = update_A3_B2(1, D, A{21}, A{22}, {LamH4{6}, LamH4{7}}, LamV3{2}, LamV3{9}, Rzz);
[A{40},  A{41},  LamV3{10}, TErV3(10), CoefV3(10)] = update_A3_B2(1, D, A{40}, A{41}, {LamH4{8}, LamH4{9}}, LamV3{3}, LamV3{10}, Rzz);
[A{59},  A{60},  LamV3{11}, TErV3(11), CoefV3(11)] = update_A3_B2(1, D, A{59}, A{60}, {LamH4{14}, LamH4{15}}, LamV3{4}, LamV3{11}, Rzz);
[A{78},  A{79},  LamV3{12}, TErV3(12), CoefV3(12)] = update_A3_B2(1, D, A{78}, A{79}, {LamH4{16}, LamH4{17}}, LamV3{5}, LamV3{12}, Rzz);
[A{97},  A{98},  LamV3{13}, TErV3(13), CoefV3(13)] = update_A3_B2(1, D, A{97}, A{98}, {LamH4{22}, LamH4{23}}, LamV3{6}, LamV3{13}, Rzz);
[A{115}, A{116}, LamV3{14}, TErV3(14), CoefV3(14)] = update_A3_B2(1, D, A{115}, A{116}, {LamH4{24}, LamH4{25}}, LamV3{7}, LamV3{14}, Rzz);

[A{3},   A{2},   LamH4{1},  TErH4(1), CoefH4(1)] = update_A2_B2(D, A{3}, A{2}, LamV3{8}, LamH4{2}, LamH4{1}, Rzz);
[A{2},   A{1},   LamH4{2},  TErH4(2), CoefH4(2)] = update_A2_B2(D, A{2}, A{1}, LamH4{1}, LamH4{3}, LamH4{2}, Rzz);
[A{1},   A{15},  LamH4{3},  TErH4(3), CoefH4(3)] = update_A2_B2(D, A{1}, A{15}, LamH4{2}, LamH4{4}, LamH4{3}, Rzz);
[A{15},  A{19},  LamH4{4},  TErH4(4), CoefH4(4)] = update_A2_B2(D, A{15}, A{19}, LamH4{3}, LamH4{5}, LamH4{4}, Rzz);
[A{19},  A{20},  LamH4{5},  TErH4(5), CoefH4(5)] = update_A2_B2(D, A{19}, A{20}, LamH4{4}, LamH4{6}, LamH4{5}, Rzz);
[A{21},  A{20},  LamH4{6},  TErH4(6), CoefH4(6)] = update_A3_B2(2, D, A{21}, A{20}, {LamV3{9}, LamH4{7}}, LamH4{5}, LamH4{6}, Rzz);
[A{21},  A{34},  LamH4{7},  TErH4(7), CoefH4(7)] = update_A3_B2(3, D, A{21}, A{34}, {LamV3{9}, LamH4{6}}, LamH4{8}, LamH4{7}, Rzz);
[A{40},  A{34},  LamH4{8},  TErH4(8), CoefH4(8)] = update_A3_B2(2, D, A{40}, A{34}, {LamV3{10}, LamH4{9}}, LamH4{7}, LamH4{8}, Rzz);
[A{40},  A{39},  LamH4{9},  TErH4(9), CoefH4(9)] = update_A3_B2(3, D, A{40}, A{39}, {LamV3{10}, LamH4{8}}, LamH4{10}, LamH4{9}, Rzz);
[A{39},  A{38},  LamH4{10}, TErH4(10), CoefH4(10)] = update_A2_B2(D, A{39}, A{38}, LamH4{9}, LamH4{11}, LamH4{10}, Rzz);
[A{38},  A{53},  LamH4{11}, TErH4(11), CoefH4(11)] = update_A2_B2(D, A{38}, A{53}, LamH4{10}, LamH4{12}, LamH4{11}, Rzz);
[A{53},  A{57},  LamH4{12}, TErH4(12), CoefH4(12)] = update_A2_B2(D, A{53}, A{57}, LamH4{11}, LamH4{13}, LamH4{12}, Rzz);
[A{57},  A{58},  LamH4{13}, TErH4(13), CoefH4(13)] = update_A2_B2(D, A{57}, A{58}, LamH4{12}, LamH4{14}, LamH4{13}, Rzz);
[A{59},  A{58},  LamH4{14}, TErH4(14), CoefH4(14)] = update_A3_B2(2, D, A{59}, A{58}, {LamV3{11}, LamH4{15}}, LamH4{13}, LamH4{14}, Rzz);
[A{59},  A{72},  LamH4{15}, TErH4(15), CoefH4(15)] = update_A3_B2(3, D, A{59}, A{72}, {LamV3{11}, LamH4{14}}, LamH4{16}, LamH4{15}, Rzz);
[A{78},  A{72},  LamH4{16}, TErH4(16), CoefH4(16)] = update_A3_B2(2, D, A{78}, A{72}, {LamV3{12}, LamH4{17}}, LamH4{15}, LamH4{16}, Rzz);
[A{78},  A{77},  LamH4{17}, TErH4(17), CoefH4(17)] = update_A3_B2(3, D, A{78}, A{77}, {LamV3{12}, LamH4{16}}, LamH4{18}, LamH4{17}, Rzz);
[A{77},  A{76},  LamH4{18}, TErH4(18), CoefH4(18)] = update_A2_B2(D, A{77}, A{76}, LamH4{17}, LamH4{19}, LamH4{18}, Rzz);
[A{76},  A{91},  LamH4{19}, TErH4(19), CoefH4(19)] = update_A2_B2(D, A{76}, A{91}, LamH4{18}, LamH4{20}, LamH4{19}, Rzz);
[A{91},  A{95},  LamH4{20}, TErH4(20), CoefH4(20)] = update_A2_B2(D, A{91}, A{95}, LamH4{19}, LamH4{21}, LamH4{20}, Rzz);
[A{95},  A{96},  LamH4{21}, TErH4(21), CoefH4(21)] = update_A2_B2(D, A{95}, A{96}, LamH4{20}, LamH4{22}, LamH4{21}, Rzz);
[A{97},  A{96},  LamH4{22}, TErH4(22), CoefH4(22)] = update_A3_B2(2, D, A{97}, A{96}, {LamV3{13}, LamH4{23}}, LamH4{21}, LamH4{22}, Rzz);
[A{97},  A{110}, LamH4{23}, TErH4(23), CoefH4(23)] = update_A3_B2(3, D, A{97}, A{110}, {LamV3{13}, LamH4{22}}, LamH4{24}, LamH4{23}, Rzz);
[A{115}, A{110}, LamH4{24}, TErH4(24), CoefH4(24)] = update_A3_B2(2, D, A{115}, A{110}, {LamV3{14}, LamH4{25}}, LamH4{23}, LamH4{24}, Rzz);
[A{115}, A{114}, LamH4{25}, TErH4(25), CoefH4(25)] = update_A3_B1(3, D, A{115}, A{114}, {LamV3{14}, LamH4{24}}, LamH4{25}, Rzz);

TErr = max(max(TErH1), max(TErV1));
TErr = max(TErr, max(TErH2));
TErr = max(TErr, max(TErV2));
TErr = max(TErr, max(TErH3));
TErr = max(TErr, max(TErV3));
TErr = max(TErr, max(TErH4));

Coef = 0.0;
for i = 1 : 25
	Coef = Coef + log(CoefH1(i));
	Coef = Coef + log(CoefH4(i));
end
for i = 1 : 26
	Coef = Coef + log(CoefH2(i));
	Coef = Coef + log(CoefH3(i));
end
for i = 1 : 14
	Coef = Coef + log(CoefV1(i));
	Coef = Coef + log(CoefV2(i));
	Coef = Coef + log(CoefV3(i));
end

Lam = [LamH1(:)', LamH2(:)', LamH3(:)', LamH4(:)', LamV1(:)', LamV2(:)', LamV3(:)'];

end

function [A2, B2, LamAB, TErr, Coef] = update_A2_B2(Dcut, A2, B2, LamA, LamB, LamAB, Evo)
%   A[m,l,r], B[m,l,r]

if( isempty(Evo) )
    M = ncon({A2, B2, diag(LamA), diag(LamAB), diag(LamB)},...
        {[-1,1,2], [-3,3,4], [-2,1], [2,3], [4,-4]}, [1,4,2,3]);
else
    M = ncon({A2, B2, diag(LamA), diag(LamAB), diag(LamB), Evo},...
        {[1,2,3], [4,5,6], [-2,2], [3,5], [6,-4], [-1,-3,1,4]}, [2,3,6,5,1,4]);
end

Dm = size(M);
if(numel(Dm) < 4 )
    for i = numel(Dm)+1:4
        Dm(i) = 1;
    end
end
M = reshape(M, [Dm(1)*Dm(2), Dm(3)*Dm(4)]);
[U, S, V] = svd(M, 'econ');
S = diag(S);
Coef = S(1);
S = S/Coef;

Dnew = min(Dcut, sum(S>1E-14));
Dnew = max(2,Dnew);
TErr = sum(S(Dnew+1:end))/sum(S);
U = reshape(U( :, 1:Dnew ), [Dm(1), Dm(2), Dnew]);
V = reshape(V( :, 1:Dnew ), [Dm(3), Dm(4), Dnew]);
LamAB = S(1:Dnew);

eta = 1E-16;
invLamA = LamA./(LamA.^2 + eta);
invLamB = LamB./(LamB.^2 + eta);
A2 = ncon({U, diag(invLamA)}, {[-1,1,-3], [-2,1]});
B2 = ncon({conj(V), diag(invLamB)}, {[-1,1,-2], [1,-3]});

end

function [A3, B2, LamAB, TErr, Coef] = update_A3_B2(ib, Dcut, A3, B2, LamA, LamB, LamAB, Evo, dir)
%   A3[m,u,l,r], B2[n,u,d] 

if( nargin < 9 )
    dir = "up";
end

Da = size(A3);
Db = size(B2);
DlamB = size(LamB,1);
if( ib == 1 )
    if( dir == "dn" )
        B2 = permute(B2, [1,3,2]);
        Db = size(B2);
    end
    A3 = reshape(ncon({A3, diag(LamA{1}), diag(LamA{2})}, {[-3,-4,1,2], [-1,1], [2,-2]}, [1,2]), [Da(3)*Da(4), Da(1)*Da(2)]);   % A3(lr,mu)
    [Q3, R3] = qr(A3, 'econ');      % A3(lr,mu) = Q3(lr,d')*R3(d',m,u)
    Dq = size(Q3,2);
    Q3 = reshape(Q3, [Da(3), Da(4), Dq]);
    R3 = reshape(R3, [Dq, Da(1), Da(2)]);
    if( isempty(Evo) )
        M = ncon({R3, B2, diag(LamAB), diag(LamB)}, {[-2,-1,3], [-3,1,2], [2,3], [-4,1]}, [1,2,3]);
    else
        M = ncon({R3, B2, diag(LamAB), diag(LamB), Evo}, {[-2,1,2], [3,4,5], [5,2], [-4,4],[-1,-3,1,3]}, [4,5,2,1,3]);
    end
elseif( ib == 2 )
    A3 = reshape(ncon({A3, diag(LamA{1}), diag(LamA{2})}, {[-3,1,-4,2], [-1,1], [2,-2]}, [1,2]), [Da(2)*Da(4), Da(1)*Da(3)]);   % A3(ur,ml)
    [Q3, R3] = qr(A3, 'econ');      % A3(ur,ml) = Q3(ur,r')*R3(r',m,l)
    Dq = size(Q3,2);
    Q3 = reshape(Q3, [Da(2), Da(4), Dq]);
    R3 = reshape(R3, [Dq, Da(1), Da(3)]);
    if( isempty(Evo) )
        M = ncon({R3, B2, diag(LamAB), diag(LamB)}, {[-2,-1,3], [-3,1,2], [2,3], [-4,1]}, [1,2,3]);
    else
        M = ncon({R3, B2, diag(LamAB), diag(LamB), Evo}, {[-2,1,2], [3,4,5], [5,2], [-4,4],[-1,-3,1,3]}, [4,5,2,1,3]);
    end
elseif( ib == 3 )
    A3 = reshape(ncon({A3, diag(LamA{1}), diag(LamA{2})}, {[-3,1,2,-4], [-1,1], [-2,2]}, [1,2]), [Da(2)*Da(3), Da(1)*Da(4)]);   % A3(ul,mr)
    [Q3, R3] = qr(A3, 'econ');      % A3(ul,mr) = Q3(ul,l')*R3(l',m,r)
    Dq = size(Q3,2);
    Q3 = reshape(Q3, [Da(2), Da(3), Dq]);
    R3 = reshape(R3, [Dq, Da(1), Da(4)]);
    if( isempty(Evo) )
        M = ncon({R3, B2, diag(LamAB), diag(LamB)}, {[-2,-1,3], [-3,1,2], [3,1], [2,-4]}, [2,1,3]);
    else
        M = ncon({R3, B2, diag(LamAB), diag(LamB), Evo}, {[-2,1,2], [3,5,4], [2,5], [4,-4],[-1,-3,1,3]}, [4,5,2,1,3]);
    end
end
% DQ3 = size(Q3)
% DR3 = size(R3)
M = reshape(M, [Da(1)*Dq, Db(1)*DlamB]);
[U, S, V] = svd(M, 'econ');    % M(mq,nB) = U(m,q,Dnew) * V(n,B,Dnew)
S = diag(S);
Coef = S(1);
S = S/Coef;

Dnew = min(Dcut, sum(S>1E-14));
Dnew = max(2,Dnew);
TErr = sum(S(Dnew+1:end))/sum(S);
U = reshape(U(:, 1:Dnew), [Da(1), Dq, Dnew]);
V = reshape(V(:, 1:Dnew), [Db(1), DlamB, Dnew]);
LamAB = S(1:Dnew);

eta = 1E-16;
invLamB = LamB./(LamB.^2 + eta);
invLamA0 = LamA{1}./(LamA{1}.^2 + eta);
invLamA1 = LamA{2}./(LamA{2}.^2 + eta);
Q3 = ncon({Q3, diag(invLamA0), diag(invLamA1)}, {[1,2,-3], [-1,1], [-2,2]}, [1,2]);
if( ib == 1 )
    A3 = ncon({U, Q3}, {[-1,1,-2], [-3,-4,1]});
    B2 = ncon({conj(V), diag(invLamB)}, {[-1,1,-3], [-2,1]});
elseif( ib == 2 )
    A3 = ncon({U, Q3}, {[-1,1,-3], [-2,-4,1]});
    B2 = ncon({conj(V), diag(invLamB)}, {[-1,1,-3], [-2,1]});
elseif( ib == 3 )
    A3 = ncon({U, Q3}, {[-1,1,-4], [-2,-3,1]});
    B2 = ncon({conj(V), diag(invLamB)}, {[-1,1,-2], [1,-3]});
end

if( ib == 1 && dir == "dn" )
    B2 = permute(B2, [1,3,2]);
end

end


% function [A3, B1, LamAB, TErr, Coef] = update_A3_B1(ib, Dcut, A3, B1, LamA, LamAB, Evo)
% %   A3[m,ugc,r], B1[m,l/r]
% 
% if( isempty(Evo) )
%     if( ib == 2 )
%         M = ncon({A3, B1, diag(LamA{1}), diag(LamA{2}), diag(LamAB)},...
%             {[-1,2,1,3], [-4,4], [2,-2], [3,-3], [4,1]}, [4,2,3,1]);
%     elseif( ib == 3 )
%         M = ncon({A3, B1, diag(LamA{1}), diag(LamA{2}), diag(LamAB)},...
%             {[-1,1,2,3], [-4,4], [-2,1], [-3,2], [3,4]}, [4,1,2,3]);
%     end
% else
%     if( ib == 2 )
%         M = ncon({A3, B1, diag(LamA{1}), diag(LamA{2}), diag(LamAB), Evo},...
%             {[1,2,5,3], [4,6], [2,-2], [3,-3], [6,5], [-1,-4,1,4]}, [2,3,5,6,1,4]);
%     elseif( ib == 3 )
%         M = ncon({A3, B1, diag(LamA{1}), diag(LamA{2}), diag(LamAB), Evo},...
%             {[1,2,3,5], [4,6], [-2,2], [-3,3], [5,6], [-1,-4,1,4]}, [2,3,5,6,1,4]);
%     end
% end
% 
% Dm = size(M);
% if(numel(Dm) < 4 )
%     for i = numel(Dm)+1:4
%         Dm(i) = 1;
%     end
% end
% M = reshape(M, [Dm(1)*Dm(2)*Dm(3), Dm(4)]);
% [U, S, V] = svd(M, 'econ');
% S = diag(S);
% Coef = S(1);
% S = S/Coef;
% 
% Dnew = min(Dcut, sum(S>1E-14));
% Dnew = max(2,Dnew);
% TErr = sum(S(Dnew+1:end))/sum(S);
% U = reshape(U(:,1:Dnew), [Dm(1), Dm(2), Dm(3), Dnew]);
% V = reshape(V(:,1:Dnew), [Dm(4), Dnew]);
% LamAB = S(1:Dnew);
% 
% eta = 1E-16;
% invLamA0 = LamA{1}./(LamA{1}.^2 + eta);
% invLamA1 = LamA{2}./(LamA{2}.^2 + eta);
% if( ib == 2 )
%     A3 = ncon({U, diag(invLamA0), diag(invLamA1)}, {[-1,1,2,-3], [1,-2], [2,-4]}, [1,2]);
%     B1 = conj(V);
% elseif( ib == 3 )
%     A3 = ncon({U, diag(invLamA0), diag(invLamA1)}, {[-1,1,2,-4], [-2,1], [-3,2]}, [1,2]);
%     B1 = conj(V);
% end
% 
% end

function [A3, B1, LamAB, TErr, Coef] = update_A3_B1(ib, Dcut, A3, B1, LamA, LamAB, Evo)
%   A3[m,u/d,l,r], B1[m,l/r]

Da = size(A3);
Db = size(B1);
if( ib == 2 )
    A3 = reshape(ncon({A3, diag(LamA{1}), diag(LamA{2})}, {[-3,1,-4,2], [-1,1], [2,-2]}, [1,2]), [Da(2)*Da(4), Da(1)*Da(3)]);   % A3(ur,ml)
    [Q3, R3] = qr(A3, 'econ');      % A3(ur,ml) = Q3(ur,r')*R3(r',m,l)
    Dq = size(Q3,2);
    Q3 = reshape(Q3, [Da(2), Da(4), Dq]);
    R3 = reshape(R3, [Dq, Da(1), Da(3)]);
    if( isempty(Evo) )
        M = ncon({R3, B1, diag(LamAB)}, {[-2,-1,2], [-3,1], [1,2]}, [1,2]);
    else
        M = ncon({R3, B1, diag(LamAB), Evo}, {[-2,1,2], [3,4], [4,2],[-1,-3,1,3]}, [4,2,1,3]);
    end
elseif( ib == 3 )
    A3 = reshape(ncon({A3, diag(LamA{1}), diag(LamA{2})}, {[-3,1,2,-4], [-1,1], [-2,2]}, [1,2]), [Da(2)*Da(3), Da(1)*Da(4)]);   % A3(ul,mr)
    [Q3, R3] = qr(A3, 'econ');      % A3(ul,mr) = Q3(ul,l')*R3(l',m,r)
    Dq = size(Q3,2);
    Q3 = reshape(Q3, [Da(2), Da(3), Dq]);
    R3 = reshape(R3, [Dq, Da(1), Da(4)]);
    if( isempty(Evo) )
        M = ncon({R3, B1, diag(LamAB)}, {[-2,-1,1], [-3,2], [1,2]}, [2,1]);
    else
        M = ncon({R3, B1, diag(LamAB), Evo}, {[-2,1,2], [3,4], [2,4],[-1,-3,1,3]}, [4,2,1,3]);
    end
end

M = reshape(M, [Da(1)*Dq, Db(1)]);
[U, S, V] = svd(M, 'econ');
S = diag(S);
Coef = S(1);
S = S/Coef;

Dnew = min(Dcut, sum(S>1E-14));
Dnew = max(2,Dnew);
TErr = sum(S(Dnew+1:end))/sum(S);
U = reshape(U(:,1:Dnew), [Da(1), Dq, Dnew]);
V = reshape(V(:,1:Dnew), [Db(1), Dnew]);
LamAB = S(1:Dnew);

eta = 1E-16;
invLamA0 = LamA{1}./(LamA{1}.^2 + eta);
invLamA1 = LamA{2}./(LamA{2}.^2 + eta);

Q3 = ncon({Q3, diag(invLamA0), diag(invLamA1)}, {[1,2,-3], [-1,1], [-2,2]}, [1,2]);
if( ib == 2 )
    A3 = ncon({U, Q3}, {[-1,1,-3], [-2,-4,1]});    
elseif( ib == 3 )
    A3 = ncon({U, Q3}, {[-1,1,-4], [-2,-3,1]});
end
B1 = conj(V);

end


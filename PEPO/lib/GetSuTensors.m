function [Ag] = GetSuTensors(A, Lam)

LamH1 = cell(25,1);
LamH2 = cell(26,1);
LamH3 = cell(26,1);
LamH4 = cell(25,1);
LamV1 = cell(14,1);
LamV2 = cell(14,1);
LamV3 = cell(14,1);
[LamH1{:}, LamH2{:}, LamH3{:}, LamH4{:}, LamV1{:}, LamV2{:}, LamV3{:}] = ...
deal(Lam{1:25}, Lam{26:51}, Lam{52:77}, Lam{78:102}, Lam{103:116}, Lam{117:130}, Lam{131:144});

Ag = cell(127,1);
Ag{14} = GetGaugeA1(A{14}, LamH1{1});
Ag{13} = GetGaugeA3(A{13}, {LamV1{1}, LamH1{1}, LamH1{2}});
Ag{18} = GetGaugeA2(A{18}, {LamH1{2}, LamH1{3}});
Ag{31} = GetGaugeA3(A{31}, {LamV1{2}, LamH1{3}, LamH1{4}});
Ag{32} = GetGaugeA2(A{32}, {LamH1{4}, LamH1{5}});
Ag{33} = GetGaugeA2(A{33}, {LamH1{5}, LamH1{6}});
Ag{37} = GetGaugeA2(A{37}, {LamH1{6}, LamH1{7}});
Ag{52} = GetGaugeA2(A{52}, {LamH1{7}, LamH1{8}});
Ag{51} = GetGaugeA2(A{51}, {LamH1{8}, LamH1{9}});
Ag{50} = GetGaugeA3(A{50}, {LamV1{3}, LamH1{9}, LamH1{10}});
Ag{56} = GetGaugeA2(A{56}, {LamH1{10}, LamH1{11}});
Ag{69} = GetGaugeA3(A{69}, {LamV1{4}, LamH1{11}, LamH1{12}});
Ag{70} = GetGaugeA2(A{70}, {LamH1{12}, LamH1{13}});
Ag{71} = GetGaugeA2(A{71}, {LamH1{13}, LamH1{14}});
Ag{75} = GetGaugeA2(A{75}, {LamH1{14}, LamH1{15}});
Ag{90} = GetGaugeA2(A{90}, {LamH1{15}, LamH1{16}});
Ag{89} = GetGaugeA2(A{89}, {LamH1{16}, LamH1{17}});
Ag{88} = GetGaugeA3(A{88}, {LamV1{5}, LamH1{17}, LamH1{18}});
Ag{94} = GetGaugeA2(A{94}, {LamH1{18}, LamH1{19}});
Ag{107} = GetGaugeA3(A{107}, {LamV1{6}, LamH1{19}, LamH1{20}});
Ag{108} = GetGaugeA2(A{108}, {LamH1{20}, LamH1{21}});
Ag{109} = GetGaugeA2(A{109}, {LamH1{21}, LamH1{22}});
Ag{113} = GetGaugeA2(A{113}, {LamH1{22}, LamH1{23}});
Ag{127} = GetGaugeA2(A{127}, {LamH1{23}, LamH1{24}});
Ag{126} = GetGaugeA2(A{126}, {LamH1{24}, LamH1{25}});
Ag{125} = GetGaugeA2(A{125}, {LamH1{25}, LamV1{7}});

Ag{12} = GetGaugeA2(A{12}, {LamV1{1}, LamV1{8}});
Ag{30} = GetGaugeA2(A{30}, {LamV1{2}, LamV1{9}});
Ag{49} = GetGaugeA2(A{49}, {LamV1{3}, LamV1{10}});
Ag{68} = GetGaugeA2(A{68}, {LamV1{4}, LamV1{11}});
Ag{87} = GetGaugeA2(A{87}, {LamV1{5}, LamV1{12}});
Ag{106} = GetGaugeA2(A{106}, {LamV1{6}, LamV1{13}});
Ag{124} = GetGaugeA2(A{124}, {LamV1{7}, LamV1{14}});

Ag{11} = GetGaugeA2(A{11}, {LamV1{8}, LamH2{1}});
Ag{10} = GetGaugeA2(A{10}, {LamH2{1}, LamH2{2}});
Ag{9} = GetGaugeA3(A{9}, {LamV2{1}, LamH2{2}, LamH2{3}});
Ag{17} = GetGaugeA2(A{17}, {LamH2{3}, LamH2{4}});
Ag{27} = GetGaugeA3(A{27}, {LamV2{2}, LamH2{4}, LamH2{5}});
Ag{28} = GetGaugeA2(A{28}, {LamH2{5}, LamH2{6}});
Ag{29} = GetGaugeA3(A{29}, {LamV1{9}, LamH2{6}, LamH2{7}});
Ag{36} = GetGaugeA2(A{36}, {LamH2{7}, LamH2{8}});
Ag{48} = GetGaugeA3(A{48}, {LamV1{10}, LamH2{8}, LamH2{9}});
Ag{47} = GetGaugeA2(A{47}, {LamH2{9}, LamH2{10}});
Ag{46} = GetGaugeA3(A{46}, {LamV2{3}, LamH2{10}, LamH2{11}});
Ag{55} = GetGaugeA2(A{55}, {LamH2{11}, LamH2{12}});
Ag{65} = GetGaugeA3(A{65}, {LamV2{4}, LamH2{12}, LamH2{13}});
Ag{66} = GetGaugeA2(A{66}, {LamH2{13}, LamH2{14}});
Ag{67} = GetGaugeA3(A{67}, {LamV1{11}, LamH2{14}, LamH2{15}});
Ag{74} = GetGaugeA2(A{74}, {LamH2{15}, LamH2{16}});
Ag{86} = GetGaugeA3(A{86}, {LamV1{12}, LamH2{16}, LamH2{17}});
Ag{85} = GetGaugeA2(A{85}, {LamH2{17}, LamH2{18}});
Ag{84} = GetGaugeA3(A{84}, {LamV2{5}, LamH2{18}, LamH2{19}});
Ag{93} = GetGaugeA2(A{93}, {LamH2{19}, LamH2{20}});
Ag{103} = GetGaugeA3(A{103}, {LamV2{6}, LamH2{20}, LamH2{21}});
Ag{104} = GetGaugeA2(A{104}, {LamH2{21}, LamH2{22}});
Ag{105} = GetGaugeA3(A{105}, {LamV1{13}, LamH2{22}, LamH2{23}});
Ag{112} = GetGaugeA2(A{112}, {LamH2{23}, LamH2{24}});
Ag{123} = GetGaugeA3(A{123}, {LamV1{14}, LamH2{24}, LamH2{25}});
Ag{122} = GetGaugeA2(A{122}, {LamH2{25}, LamH2{26}});
Ag{121} = GetGaugeA2(A{121}, {LamH2{26}, LamV2{7}});

Ag{8} = GetGaugeA2(A{8}, {LamV2{1}, LamV2{8}});
Ag{26} = GetGaugeA2(A{26}, {LamV2{2}, LamV2{9}});
Ag{45} = GetGaugeA2(A{45}, {LamV2{3}, LamV2{10}});
Ag{64} = GetGaugeA2(A{64}, {LamV2{4}, LamV2{11}});
Ag{83} = GetGaugeA2(A{83}, {LamV2{5}, LamV2{12}});
Ag{102} = GetGaugeA2(A{102}, {LamV2{6}, LamV2{13}});
Ag{120} = GetGaugeA2(A{120}, {LamV2{7}, LamV2{14}});

Ag{7} = GetGaugeA2(A{7}, {LamV2{8}, LamH3{1}});
Ag{6} = GetGaugeA2(A{6}, {LamH3{1}, LamH3{2}});
Ag{5} = GetGaugeA3(A{5}, {LamV3{1}, LamH3{2}, LamH3{3}});
Ag{16} = GetGaugeA2(A{16}, {LamH3{3}, LamH3{4}});
Ag{23} = GetGaugeA3(A{23}, {LamV3{2}, LamH3{4}, LamH3{5}});
Ag{24} = GetGaugeA2(A{24}, {LamH3{5}, LamH3{6}});
Ag{25} = GetGaugeA3(A{25}, {LamV2{9}, LamH3{6}, LamH3{7}});
Ag{35} = GetGaugeA2(A{35}, {LamH3{7}, LamH3{8}});
Ag{44} = GetGaugeA3(A{44}, {LamV2{10}, LamH3{8}, LamH3{9}});
Ag{43} = GetGaugeA2(A{43}, {LamH3{9}, LamH3{10}});
Ag{42} = GetGaugeA3(A{42}, {LamV3{3}, LamH3{10}, LamH3{11}});
Ag{54} = GetGaugeA2(A{54}, {LamH3{11}, LamH3{12}});
Ag{61} = GetGaugeA3(A{61}, {LamV3{4}, LamH3{12}, LamH3{13}});
Ag{62} = GetGaugeA2(A{62}, {LamH3{13}, LamH3{14}});
Ag{63} = GetGaugeA3(A{63}, {LamV2{11}, LamH3{14}, LamH3{15}});
Ag{73} = GetGaugeA2(A{73}, {LamH3{15}, LamH3{16}});
Ag{82} = GetGaugeA3(A{82}, {LamV2{12}, LamH3{16}, LamH3{17}});
Ag{81} = GetGaugeA2(A{81}, {LamH3{17}, LamH3{18}});
Ag{80} = GetGaugeA3(A{80}, {LamV3{5}, LamH3{18}, LamH3{19}});
Ag{92} = GetGaugeA2(A{92}, {LamH3{19}, LamH3{20}});
Ag{99} = GetGaugeA3(A{99}, {LamV3{6}, LamH3{20}, LamH3{21}});
Ag{100} = GetGaugeA2(A{100}, {LamH3{21}, LamH3{22}});
Ag{101} = GetGaugeA3(A{101}, {LamV2{13}, LamH3{22}, LamH3{23}});
Ag{111} = GetGaugeA2(A{111}, {LamH3{23}, LamH3{24}});
Ag{119} = GetGaugeA3(A{119}, {LamV2{14}, LamH3{24}, LamH3{25}});
Ag{118} = GetGaugeA2(A{118}, {LamH3{25}, LamH3{26}});
Ag{117} = GetGaugeA2(A{117}, {LamH3{26}, LamV3{7}});

Ag{4} = GetGaugeA2(A{4}, {LamV3{1}, LamV3{8}});
Ag{22} = GetGaugeA2(A{22}, {LamV3{2}, LamV3{9}});
Ag{41} = GetGaugeA2(A{41}, {LamV3{3}, LamV3{10}});
Ag{60} = GetGaugeA2(A{60}, {LamV3{4}, LamV3{11}});
Ag{79} = GetGaugeA2(A{79}, {LamV3{5}, LamV3{12}});
Ag{98} = GetGaugeA2(A{98}, {LamV3{6}, LamV3{13}});
Ag{116} = GetGaugeA2(A{116}, {LamV3{7}, LamV3{14}});

Ag{3} = GetGaugeA2(A{3}, {LamV3{8}, LamH4{1}});
Ag{2} = GetGaugeA2(A{2}, {LamH4{1}, LamH4{2}});
Ag{1} = GetGaugeA2(A{1}, {LamH4{2}, LamH4{3}});
Ag{15} = GetGaugeA2(A{15}, {LamH4{3}, LamH4{4}});
Ag{19} = GetGaugeA2(A{19}, {LamH4{4}, LamH4{5}});
Ag{20} = GetGaugeA2(A{20}, {LamH4{5}, LamH4{6}});
Ag{21} = GetGaugeA3(A{21}, {LamV3{9}, LamH4{6}, LamH4{7}});
Ag{34} = GetGaugeA2(A{34}, {LamH4{7}, LamH4{8}});
Ag{40} = GetGaugeA3(A{40}, {LamV3{10}, LamH4{8}, LamH4{9}});
Ag{39} = GetGaugeA2(A{39}, {LamH4{9}, LamH4{10}});
Ag{38} = GetGaugeA2(A{38}, {LamH4{10}, LamH4{11}});
Ag{53} = GetGaugeA2(A{53}, {LamH4{11}, LamH4{12}});
Ag{57} = GetGaugeA2(A{57}, {LamH4{12}, LamH4{13}});
Ag{58} = GetGaugeA2(A{58}, {LamH4{13}, LamH4{14}});
Ag{59} = GetGaugeA3(A{59}, {LamV3{11}, LamH4{14}, LamH4{15}});
Ag{72} = GetGaugeA2(A{72}, {LamH4{15}, LamH4{16}});
Ag{78} = GetGaugeA3(A{78}, {LamV3{12}, LamH4{16}, LamH4{17}});
Ag{77} = GetGaugeA2(A{77}, {LamH4{17}, LamH4{18}});
Ag{76} = GetGaugeA2(A{76}, {LamH4{18}, LamH4{19}});
Ag{91} = GetGaugeA2(A{91}, {LamH4{19}, LamH4{20}});
Ag{95} = GetGaugeA2(A{95}, {LamH4{20}, LamH4{21}});
Ag{96} = GetGaugeA2(A{96}, {LamH4{21}, LamH4{22}});
Ag{97} = GetGaugeA3(A{97}, {LamV3{13}, LamH4{22}, LamH4{23}});
Ag{110} = GetGaugeA2(A{110}, {LamH4{23}, LamH4{24}});
Ag{115} = GetGaugeA3(A{115}, {LamV3{14}, LamH4{24}, LamH4{25}});
Ag{114} = GetGaugeA1(A{114}, LamH4{25});
    
end

function [Ag] = GetGaugeA1(A1, Lam)
% A1[m,r]
    
Ag = ncon({A1, diag(sqrt(Lam))}, {[-1,1], [1,-2]});

end
    
function [Ag] = GetGaugeA2(A2, Lam)
% A2[m,l,r]
    
Ag = ncon({A2, diag(sqrt(Lam{1})), diag(sqrt(Lam{2}))}, {[-1,1,2], [-2,1], [2,-3]}, [1,2]);

end

function [Ag] = GetGaugeA3(A3, Lam)
% A3[m,u/d,l,r]
    
Ag = ncon({A3, diag(sqrt(Lam{1})), diag(sqrt(Lam{2})), diag(sqrt(Lam{3}))}, {[-1,1,2,3], [-2,1], [-3,2], [3,-4]}, [1,2,3]);

end







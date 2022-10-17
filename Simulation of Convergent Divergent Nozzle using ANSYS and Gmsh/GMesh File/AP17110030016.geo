//+
Point(1) = {1.0000, 0.0013, 0, 1.0};
Point(2) = {1.0000, 0.0013, 0, 1.0};
Point(3) = {0.9500, 0.0147, 0, 1.0};
Point(4) = {0.9000, 0.0271, 0, 1.0};
Point(5) = {0.8000, 0.0489, 0, 1.0};
Point(6) = {0.7000, 0.0669, 0, 1.0};
Point(7) = {0.6000, 0.0814, 0, 1.0};
Point(8) = {0.5000, 0.0919, 0, 1.0};
Point(9) = {0.4000, 0.0980, 0, 1.0};
Point(10) = {0.3000, 0.0976, 0, 1.0};
Point(11) = {0.2500, 0.0941, 0, 1.0};
Point(12) = {0.2000, 0.0880, 0, 1.0};
Point(13) = {0.1500, 0.0789, 0, 1.0};
Point(14) = {0.1000, 0.0659, 0, 1.0};
Point(15) = {0.0750, 0.0576, 0, 1.0};
Point(16) = {0.0500, 0.0473, 0, 1.0};
Point(17) = {0.0250, 0.0339, 0, 1.0};
Point(18) = {0.0125, 0.0244, 0, 1.0};
Point(19) = {0.0000, 0.0000, 0, 1.0};
Point(20) = {0.0125, -0.0143, 0, 1.0};
Point(21) = {0.0250, -0.0195, 0, 1.0};
Point(22) = {0.0500, -0.0249, 0, 1.0};
Point(23) = {0.0750, -0.0274, 0, 1.0};
Point(24) = {0.1000, -0.0286, 0, 1.0};
Point(25) = {0.1500, -0.0288, 0, 1.0};
Point(26) = {0.2000, -0.0274, 0, 1.0};
Point(27) = {0.2500, -0.0250, 0, 1.0};
Point(28) = {0.3000, -0.0226, 0, 1.0};
Point(29) = {0.4000, -0.0180, 0, 1.0};
Point(30) = {0.5000, -0.0140, 0, 1.0};
Point(31) = {0.6000, -0.0100, 0, 1.0};
Point(32) = {0.7000, -0.0065, 0, 1.0};
Point(33) = {0.8000, -0.0039, 0, 1.0};
Point(34) = {0.9000, -0.0022, 0, 1.0};
Point(35) = {0.9500, -0.0016, 0, 1.0};
Point(36) = {1.0000, -0.0013, 0, 1.0};
//+
//+
Point(42) = {-0.5, 1, 0, 1};
Point(43) = {-0.5, -1, 0, 1};
Point(44) = {1.5, 1, 0, 1};
Point(45) = {1.5, -1, 0, 1};
//+
Line(1) = {42, 44};
//+
Line(2) = {44, 45};
//+
Line(3) = {45, 43};
//+
Line(4) = {43, 42};
//+
Line(5) = {42, 18};
//+
Line(6) = {43, 20};
//+
Line(7) = {44, 1};
//+
Line(8) = {36, 45};
//+
BSpline(10) = {18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 1};
//+
Curve Loop(2) = {5, 10, -7, -1};
//+
Plane Surface(2) = {2};
//+
BSpline(11) = {20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};
//+
Curve Loop(3) = {3, 6, 11, 8};
//+
Plane Surface(3) = {3};
//+
BSpline(12) = {1, 36};
//+
Curve Loop(4) = {12, 8, -2, 7};
//+
Plane Surface(4) = {4};
//+
BSpline(13) = {18, 19, 20};
//+
Curve Loop(5) = {5, 13, -6, 4};
//+
Plane Surface(5) = {5};
//+
Transfinite Curve {4, 13} = 10 Using Progression 1;
//+
Transfinite Curve {2, 12} = 10 Using Progression 1;
//+
Transfinite Curve {1, 10} = 10 Using Progression 1;
//+
Transfinite Curve {3, 11} = 10 Using Progression 1;

//+
Transfinite Curve {4, 5, 6, 13, 7, 8, 2, 12} = 40 Using Progression 1;
//+
Transfinite Curve {1, 5, 7, 10, 11, 6, 8, 3} = 20 Using Progression 1;
//+
Transfinite Surface {5};
//+
Transfinite Surface {2};
//+
Transfinite Surface {4};
//+
Transfinite Surface {3};
//+
Recombine Surface {5, 2, 4, 3};

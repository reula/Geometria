
//+
SetFactory("OpenCASCADE");
Sphere(1) = {0.0, 0.0, 0.0, 10.}; // ext
//+
Sphere(2) = {0.0, 0.0, 0.0, 2.1 }; // int
//+
Surface Loop(3) = {1};
//+
Surface Loop(4) = {2}; 
//+
//Volume(1) = {1};
//+
//Volume(2) = {2};
//+
//Physical Surface("int") = {4};
//+
//Physical Surface("ext") = {3};
//+
BooleanDifference(5) = { Volume{1}; Delete; }{ Volume{2}; Delete; };
//+
Physical Volume("volume") = {5};
//+
Physical Surface("int") = {2};
//+
Physical Surface("ext") = {1};
//+

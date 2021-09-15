// Gmsh project created on Mon Sep 13 19:59:19 2021
SetFactory("OpenCASCADE");

Mesh.Algorithm = 6;
Mesh.MeshSizeMin = 0.4;
Mesh.MeshSizeMax = 0.4;


R_ext = DefineNumber[10., Min 0.1, Max 2, Step 0.01,
  Name "Parameters/Sphere radius ext" ];

R_int = DefineNumber[1., Min 0.1, Max 2, Step 0.01,
  Name "Parameters/Sphere radius int" ];

Sphere(1) = {0,0,0,R_ext};

Sphere(2) = {0,0,0,R_int};

BooleanDifference(3) = { Sphere{1}; Delete; }{ Sphere{2}; Delete; };
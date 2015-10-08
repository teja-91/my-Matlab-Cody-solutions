% A sequence of triangles is constructed in the following way:
% 
% 1) the first triangle is Pythagoras' 3-4-5 triangle
% 
% 2) the second triangle is a right-angle triangle whose second longest side is the hypotenuse of the first triangle,
% and whose shortest side is the same length as the second longest side of the first triangle
% 
% 3) the third triangle is a right-angle triangle whose second longest side is the hypotenuse of the second triangle,
% and whose shortest side is the same length as the second longest side of the second triangle etc.
% 
% Each triangle in the sequence is constructed so that its second longest side is the hypotenuse
% of the previous triangle and its shortest side is the same length as the second longest side of the previous triangle.
% 
% What is the area of a square whose side is the hypotenuse of the nth triangle in the sequence?

function area = triangle_sequence(n)
l(1)=4;
s(1)=3;
for k=1:n
h(k)=sqrt(l(k)^2+s(k)^2);
l(k+1)=h(k);
s(k+1)=l(k);
end
  area = h(n)^2;
end
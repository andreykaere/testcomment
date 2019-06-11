import geometry;
size(5.8cm);

circle w = circle((point)(0, 0), 1);
point o = w.C;
var r = w.r;
point A = (o.x + r + 0.3, o.y + r + 0.5); 
point C = (o.x - r - 0.4, o.y - r + 0.5); 

line a1 = tangents(w, A)[0];
line a2 = tangents(w, A)[1];

line c1 = tangents(w, C)[0];
line c2 = tangents(w, C)[1];

point B = intersectionpoint(a1, c1);
point D = intersectionpoint(a2, c2);


circle al  = incircle(A, B, D);
circle gam = incircle(C, B, D);

point A1 = intersectionpoints(al,  line(B, D))[0];
point C1 = intersectionpoints(gam, line(B, D))[0];


point Cp = intersectionpoints(w, line(A, A1))[0];
point Ap = intersectionpoints(w, line(C, C1))[1];

line ap = tangent(w, Ap);
line cp = tangent(w, Cp);

point C2 = intersectionpoints(line(C, Cp), gam)[1];
point A2 = intersectionpoints(line(A, Ap), al)[1];

line c2 = tangent(gam, C2);
line a2 = tangent(al, A2);


//draw

//draw(Label("$\Omega$", Relative(-0.1), S+E*2, fontsize(11)), w, linewidth(0.3) + dashed);

draw(Label("$\Omega$", Relative(-0.13), S*1.3, fontsize(11)), 
                                    w, linewidth(0.3) + dashed);
//draw(w, linewidth(0.3) + dashed);

dot("$A$", A, NE);
dot("$B$", B, SE);
dot("$C$", C, SW);
dot("$D$", D, NW);


draw(segment(A, B));
draw(segment(C, B));
draw(segment(C, D));
draw(segment(A, D));

draw(segment(B, D));
//draw(segment(A, C));

draw(Label("$\alpha$", Relative(-0.15), S, fontsize(10)), al);
draw(Label("$\gamma$", Relative(-0.1), S, fontsize(10)), gam);

draw(Label("$a'$", fontsize(10)), ap);
draw(Label("$c'$", Relative(0.1), NE, fontsize(10)), cp);

draw(Label("$a_2$", fontsize(10)), a2);
draw(Label("$c_2$", Relative(0.1), N*0.1+E*0.5, fontsize(10)), c2);


dot(Label("$A'$", UnFill), Ap, N*0.1+E*1.5);
dot(Label("$C'$", UnFill), Cp, S*2);

dot(Label("$A_2$", UnFill), A2, N*0.4+E*1.1);
dot(Label("$C_2$", UnFill), C2, S*1.4+W*0.7);

draw(segment(Ap, Cp), dashed+linewidth(0.3));
draw(segment(A2, C2), dashed+linewidth(0.3));


settings.outformat="svg";
import graph;

real sinc(real x) {
  if (x == 0)
    return 1;
  return sin(pi * x) / pi / x;
}

real rect(real x) {
  if (abs(x) < 0.5) return 1;
  return 0;
}

picture pic1;
size(pic1, 10cm);
real xmax = 3.7;
xaxis(pic1, "$t$",xmin=-xmax,xmax=xmax,arrow=Arrow(TeXHead));
yaxis(pic1, "$x(t)$",ymin=-0.3,ymax=1.3,arrow=Arrow(TeXHead),autorotate=false);
label(pic1, "$0$",(0,0),SE);
for (int i = 1; i <= (int) xmax; i = i + 1) {
  label(pic1, "$" + ((string) i) + "$",(i,0),S);
  label(pic1, "$-" + ((string) i) + "$",(-i,0),S);
  xtick(pic1,(i,0), dir=S, size=0.08cm);
  xtick(pic1,(-i,0), dir=S, size=0.08cm);
}

draw(pic1, graph(sinc, -3.2, 3.2, operator ..), black);
add(pic1.fit(),(0,0),1cm * W);

picture pic2;
size(pic2, 3cm);
real xmax = 0.8;
xaxis(pic2, "$f$",xmin=-xmax,xmax=xmax,arrow=Arrow(TeXHead));
yaxis(pic2, "$X(f)$",ymin=-0.1,ymax=1.5,arrow=Arrow(TeXHead),autorotate=false);
label(pic2, "$0$",(0,0),SE);
label(pic2, "$\frac{1}{2}$",(0.5,0),S);
label(pic2, "$-\frac{1}{2}$",(-0.5,0),S);
draw(pic2, graph(rect, -0.8, 0.8, operator --, n=400), black);
add(pic2.fit(),(0,0),1cm * E);
draw((-1cm,0)--(1cm,0),arrow=Arrows(TeXHead));

settings.outformat="svg";
import graph;

picture genpicture(pair symbol, int cycles=1) {
  picture pic;
  picture pic1;
  size(pic1,10cm);

  path[] drawCross(pair p) {
    real cross_size = 0.05;
    return shift(p) * ((-0.05,-0.05)--(0.05,0.05)^^(-0.05,0.05)--(0.05,-0.05));
  }

  typedef real realfcn(real);
  realfcn F(pair p) {
    return new real(real t) { return 0.8 * sin(2pi * t + atan2(p.y, p.x)); };
  }

  draw(pic1,(-1,0)--(1,0));
  label(pic1,"Re", (1,0), E);
  draw(pic1,(0,-1)--(0,1));
  label(pic1,"Im", (0,1), N);
  draw(pic1,drawCross(scale(0.6)*symbol));
  add(pic,pic1.fit(),(0,0));

  picture pic2;
  size(pic2,6cm);
  xaxis(pic2,"$t$",xmin=0,xmax=cycles + 0.4,arrow=Arrow);
  yaxis(pic2, "$x(t)$",ymin=-1.4,ymax=1.4,arrow=Arrow);
  draw(pic2,graph(F(symbol),0,cycles),red);
  add(pic,pic2.fit(),(5cm,0),20E);
  return pic;
}

picture pic = genpicture((1,1));
shipout(prefix="qpsk1", pic=pic);
pic = genpicture((1,-1));
shipout(prefix="qpsk2", pic=pic);
pic = genpicture((-1,-1));
shipout(prefix="qpsk3", pic=pic);
pic = genpicture((-1,1));
shipout(prefix="qpsk4", pic=pic);

pic = genpicture((1,1), 3);
shipout(prefix="qpsk3-1", pic=pic);
pic = genpicture((1,-1), 3);
shipout(prefix="qpsk3-2", pic=pic);
pic = genpicture((-1,-1), 3);
shipout(prefix="qpsk3-3", pic=pic);
pic = genpicture((-1,1), 3);
shipout(prefix="qpsk3-4", pic=pic);

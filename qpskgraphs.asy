import graph;
settings.outformat="svg";

defaultpen(fontsize(8pt));

picture create_picture(real T) {
  real scale_factor = 5;

  real f(real t) {
    real r = sin(t);
    return scale_factor * r;
  }

  real T = scale_factor * T;

  real f_threshold(real t) {
    real r = f(t);
    if (r < T) return 0;
    return r - T;
  }

  picture pic;
  size(pic,3cm);
  xaxis(pic, "$t$", 0, 4.5pi);
  yaxis(pic, "$y(t)$", -scale_factor*1.1, scale_factor*1.1);

  draw(pic, graph(f_threshold,0,6*pi), blue);
  draw(pic, graph(f,0,6*pi), red+dashed);
  label(pic,"$T = " + ((string)T) + "$", (6,6.5));
  return pic;
}

picture pic = create_picture(0.2);
add(currentpicture, pic.fit(),(0,0),N);
pic = create_picture(0.3);
add(currentpicture, pic.fit(),(3.2cm,0),N);
pic = create_picture(0.4);
add(currentpicture, pic.fit(),(0,-2.3cm),N);
pic = create_picture(0.5);
add(currentpicture, pic.fit(),(3.2cm,-2.3cm),N);

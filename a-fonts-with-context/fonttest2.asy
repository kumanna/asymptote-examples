import settings;
settings.tex="context";
outformat="svg";

size(9cm);

texpreamble("\definefontfamily [myfamily] [serif] [DejaVu Sans Mono][scale=1.33]");
texpreamble("\definefontfamily [myfamily] [sans] [DejaVu Sans][scale=1.33]");
texpreamble("\definefontfamily [myfamily] [math] [Neo Euler][scale=1.33]");
texpreamble("\definefontfamily [myfamily] [mono] [DejaVu Sans Mono][scale=1.33]");
texpreamble("\setupbodyfont[myfamily]");
defaultpen(font("myfamily")+fontsize(10pt));
label("Hello✔™ $x + y^2$",(0,0));
label("✔™",(1,1));

{ mkDerivation, gdSupport ? true, gd, fontconfig, libjpeg, bzip2 }:

mkDerivation {
  name = "graphviz";
  src = ~/src/nix-pills/rsc/graphviz-2.38.0.tar.gz;
  buildInputs = if gdSupport then [ gd fontconfig libjpeg bzip2 ] else [];
}

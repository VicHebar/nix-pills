#first of all we create a file .sh (is the builder.sh)
#open the nix repl
nix repl

:l <nixpkgs>
d = derivation { name = "foo"; builder = "${bash}/bin/bash"; args = [./builder.sh]; system = builtins.currentSystem; } # why I need args?
:b d #build the .drv file (the derivation)

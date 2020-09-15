nix repl
:l <nixpkgs>
simple = derivation { name = "simple"; builder = "${bash}/bin/bash"; args = [./simple_builder.sh]; gcc = gcc; coreutils = corelist; src = ./simple.c; system = builtins.currentSystem; }
:b simple

{ pkgs ? import <nixpkgs> {} }:

let
  neocities = pkgs.bundlerApp {
    pname = "neocities";
    exes = [ "neocities" ];
    gemdir = ./bin/neocities;
  };
in
  pkgs.mkShell {
    name = "nutty.world";
    buildInputs = [
      pkgs.bundix
      pkgs.gnumake
      neocities
    ];
  }

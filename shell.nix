{ pkgs ? import <nixpkgs> {} }:

let
  neocities = pkgs.bundlerApp {
    pname = "neocities";
    exes = [ "neocities" ];
    gemdir = ./bin/neocities;
  };

  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "d4879bfd2b595d7fbd37da1a7bea5d0361975eb3";
    sha256 = "0kzwg3mwziwx378kvbzhayy65abvk1axi12zvf2f92cs53iridwh";
  }) {};
in
  pkgs.mkShell {
    name = "nutty.world";
    buildInputs = easyPS.buildInputs ++ [
      pkgs.bundix
      pkgs.gnumake
      pkgs.yarn
      neocities
    ];
  }

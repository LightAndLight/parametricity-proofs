{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc822" }:

let

  drv = import ./default.nix { inherit nixpkgs compiler; };

in

  drv.env

{ pkgs ? import <nixpkgs> { } }:

with pkgs;

let
  c = buildRustCrate rec {
    crateName = "nix-rust-integration-test-repro";
    version = "0.1.0";
    src = ./.;
    buildTests = true;
  };
in
c

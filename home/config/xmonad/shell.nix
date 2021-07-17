{ pkgs ? import <nixpkgs> { } }:

with pkgs;
let
  haskellTooling = let
    ghc' = haskellPackages.ghcWithPackages
      (hp: with hp; [ xmonad xmonad-contrib xmonad-extras ]);
  in [ ghc' cabal-install hlint ghcid ];

in mkShell { buildInputs = haskellTooling; }

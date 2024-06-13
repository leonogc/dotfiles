{ config, pkgs, ... }:

{
  imports = [
    ./browser
    ./coding
    ./terminal
    ./wm
  ];
}

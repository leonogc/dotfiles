{ config, pkgs, ... }:

{
  imports = [
    ./hyprland
    ./terminal
    ./vscode
  ];

  home = {
    username = "luker";
    homeDirectory = "/home/luker";
    stateVersion = "23.11";
  };
}

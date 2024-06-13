{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty
    starship
    fzf
  ];
}

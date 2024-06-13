{ config, pkgs,  ... }:

{
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
    dunst
    wofi
    swww
  ];
}

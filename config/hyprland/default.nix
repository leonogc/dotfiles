{ config, pkgs, ... }:

let
    config = builtins.readFile ./hyprland.conf;
    theme = builtins.readFile ./catppuccin-mocha.conf;
in
{
    home.file.".config/hypr/hyprland.conf".text = ''${config}'';
    home.file.".config/hypr/catppuccin-mocha.conf".text = ''${theme}'';
    home.file.".config/waybar".source = ./waybar;
    home.file.".config/wofi".source = ./wofi;
    home.file.".config/dunst".source = ./dunst;
}

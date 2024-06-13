{ config, pkgs, ... }:

let
#     source = "./config/terminal";
#     target = "./config/alacritty";
     config = builtins.readFile ./alacritty.toml;
     theme = builtins.readFile ./catppuccin-mocha.toml;
in
{
     home.file.".config/alacritty/alacritty.toml".text = ''${config}'';
     home.file.".config/alacritty/catppuccin-mocha.toml".text = ''${theme}'';

#     home.activation.installSymlinks = {
#	home.file."${target}".source = source;
#     };
}

{ config, pkgs, ... }:

let
    config = builtins.readFile ./settings.json;
in
{
    home.file.".config/Code/User/settings.json".text = ''${config}'';
}
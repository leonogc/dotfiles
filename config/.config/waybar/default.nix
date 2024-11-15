{ config, pkgs, ... }:

let
    config = builtins.readFile ./config;
    theme = builtins.readFile ./config;


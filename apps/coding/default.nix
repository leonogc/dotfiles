{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    neovim
    tmux
    vscode
  ];
}

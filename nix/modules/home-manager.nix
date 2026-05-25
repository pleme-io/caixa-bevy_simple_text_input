# nix/modules/home-manager.nix — auto-generated from bevy_simple_text_input.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_simple_text_input; in {
  options.programs.bevy_simple_text_input = {
    enable = lib.mkEnableOption "bevy_simple_text_input";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_simple_text_input or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}

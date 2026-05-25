# nix/modules/nixos.nix — auto-generated from bevy_simple_text_input.caixa.lisp
# description: "Bevy plugin for a simple single-line text input widget."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_simple_text_input;
in {
  options.services.bevy_simple_text_input = {
    enable = lib.mkEnableOption "bevy_simple_text_input";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_simple_text_input or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}

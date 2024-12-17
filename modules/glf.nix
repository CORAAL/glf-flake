{ config, pkgs, ... }:

{
  options.hello = pkgs.lib.mkOption {
    description = "Options for the hello package";
    type = pkgs.lib.types.attrsOf (pkgs.lib.types.submodule {
      options = {
        enable = pkgs.lib.mkOption {
          description = "Enable the hello package";
          type = pkgs.lib.types.bool;
          default = false;
        };
      };
    });
  };

  config = pkgs.lib.mkIf config.hello.enable
    { environment.systemPackages = with pkgs; [ hello ]; }
    { environment.systemPackages = with pkgs; [ ]; };
}

{ config, pkgs, ... }:

{
  options.hello.enable = pkgs.lib.mkOption {
    description = "Enable the hello package";
    type = pkgs.lib.types.bool;
    default = false;
  };

  config = pkgs.lib.mkIf config.hello.enable {
    environment.systemPackages = with pkgs; [ hello ];
  };
}

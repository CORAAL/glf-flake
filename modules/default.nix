{ config, lib, ... }:

{

  options.hello.enable = lib.mkOption {
    description = "Enable the hello package";
    type = lib.types.bool;
    default = true;
  };

  config = lib.mkIf config.hello.enable {
    environment.systemPackages = with config.nixpkgs.pkgs; [ hello ];
  };

}

{ lib, config, pkgs, ... }:

{

  options.boot.enable = lib.mkOption {
    description = "Enable GLF Boot configurations";
    type = lib.types.bool;
    default = lib.mkDefault true;
  };

  config = lib.mkIf config.boot.enable {

    boot = {
      tmp.cleanOnBoot = true;
      supportedFilesystems.zfs = lib.mkDefault false;
      kernelPackages = lib.mkDefault pkgs.linuxPackages_zen;
      kernelParams = if builtins.elem "kvm-amd" config.boot.kernelModules then [ "amd_pstate=active" ] else [ ];
    };
    
  };

}

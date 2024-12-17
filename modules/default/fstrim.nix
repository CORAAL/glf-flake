{ lib, config, ... }:

{

  options.fstrim.enable = lib.mkOption {
    description = "Enable GLF Fstrim configurations";
    type = lib.types.bool;
    default = lib.mkDefault true;
  };

  config = lib.mkIf config.fstrim.enable {

    services.fstrim = {
	enable = true;
	interval = "daily";
    };
    
  };

}

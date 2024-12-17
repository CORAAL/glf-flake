{ config, pkgs, ... }:

{

  options.hello = pkgs.lib.mkOption {
    description = "desc";
    type = pkgs.lib.types.str;
    default = "false";
  };

  config = {
    environment.systemPackages = with pkgs; [ hello ];
  };
  
}

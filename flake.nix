{

  description = "GLF Configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs, ... }:
  {
    nixosModules = {

      default = { config, lib, ... }: {

        options.hello.enable = lib.mkOption {
	  description = "Enable the hello package";
	  type = lib.types.bool;
	  default = true;
	};

	config = lib.mkIf config.hello.enable {
          environment.systemPackages = with config.nixpkgs.pkgs; [ hello ];
	};
      };
    };
  };
  
}

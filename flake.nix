{

  description = "GLF Configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs   = import nixpkgs { inherit system; }; 
    in
    {
      nixosModules.default = { config, pkgs, ... }: {

	options.hello.enable = pkgs.lib.mkOption {
	    description = "Enable the hello package";
	    type = pkgs.lib.types.bool;
	    default = false;
	};

	config = pkgs.lib.mkIf config.hello.enable {
	    environment.systemPackages = with pkgs; [ hello ];
	};
      };
    };

  
}

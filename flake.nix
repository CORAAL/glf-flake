{

  description = "GLF Configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs, ... }:
  {
    nixosModules = {
      default = import ./modules/default;
    };
  };
  
}

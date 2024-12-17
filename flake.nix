{

  description = "GLF Configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs   = import nixpkgs { inherit system; }; 
    in
    {
      nixosModules.glf = import ./modules/glf.nix { inherit pkgs; };
    };

  
}

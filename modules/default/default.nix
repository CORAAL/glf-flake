{

  _module = {
    meta = {
      description = "Enable base configuration for GLF-OS";
    };
  };

  imports = [
    ./boot.nix
    ./fstrim.nix
    ./firefox.nix
  ];
  
}

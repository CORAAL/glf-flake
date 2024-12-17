{ lib, config, ... }:

{

  options.firefox.enable = lib.mkOption {
    description = "Enable GLF firefox configurations";
    type = lib.types.bool;
    default = lib.mkDefault true;
  };

  config = lib.mkIf config.firefox.enable {

    programs.firefox = {
	enable = true;
	wrapperConfig.pipewireSupport = true;
	languagePacks = [ "fr" "en-US" ];
	preferences = {
	  "intl.accept_languages" = "fr-fr,en-us,en";
	  "intl.locale.requested" = "fr,en-US";
	};
    };

  };

}
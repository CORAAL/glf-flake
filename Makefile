# info about flake
info:
	nix --extra-experimental-features "nix-command flakes" flake info

# Check configuration only without build
check: 
	nix --extra-experimental-features "nix-command flakes" flake check --no-build

# Update flake.lock
update:
	nix --extra-experimental-features "nix-command flakes" flake update

.PHONY: check update

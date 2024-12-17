# Flocons

Le flocon contient plusieurs modules permettant de modifier l'expérience de l'utilisateur en exposant des options pré-configurés. 

Le module `default` contient les configurations par défaut qui ne devraient pas être modifié par défaut. 
Les options utilisent un maximum l'option `lib.mkDefault` au lieu de `lib.mkForce`, l'utilisateur doit rester maître des options activés sur son système.

# Commandes

Les commandes ci-dessous sont formatés de sorte à être exécuté facilement pour les utilisateurs n'utilisant normalement pas les flocons. 

## Lister les attributs du flocons

```bash
nix --extra-experimental-features "nix-command flakes" flake show
```

## Tester la configuration dans une machine virtuelle 

TODO : Corriger la commande ci-nécessaire. 
Des options devront peut-être être activés.

```bash
nixos-rebuild build-vm -I nixos-config=./nix-cfg/configuration.nix && ./result/bin/run-glfos-vm 
```
## Mettre à jour le flocon 

```bash
nix --extra-experimental-features "nix-command flakes" flake update
```

## Vérifier la configuration sans la "compiler"

```bash
nix --extra-experimental-features "nix-command flakes" flake check --no-build
```

## Vérifier la configuration (et la compiler)

```bash
nix --extra-experimental-features "nix-command flakes" flake check
```

{ ... }:

let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz";
in
{
  imports = [ "${home-manager}/nixos" ];

  home-manager.users.raf = {
    programs.git = {
      enable = true;
      userName = "raf";
      userEmail = "rraf@tuta.io";
      extraConfig = {
        init.defaultBranch = "main";
        push.autoSetupRemote = true;
      };
    };
  };
}

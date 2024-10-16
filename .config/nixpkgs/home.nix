{ config, pkgs, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    <home-manager/nixos>
  ];

  # ... (previous configuration remains the same)

  # Home Manager Configuration
  home-manager.users.hikki = { pkgs, ... }: {
    home.packages = with pkgs; [
      firefox
      thunderbird
      # Add more user-specific packages here
    ];

    programs = {
      bash = {
        enable = true;
        initExtra = ''
          # Your custom bash configurations here
        '';
      };
      git = {
        enable = true;
        userName = "Your Name";
        userEmail = "your.email@example.com";
      };
      vim.enable = true;
    };

    # Manage dotfiles explicitly
    home.file = {
      ".bashrc".source = ./dotfiles/bashrc;
      # Add other dotfiles here
    };

    # This is important to prevent conflicts with existing files
    home.stateVersion = "23.11";
    home.enableNixpkgsReleaseCheck = false;
  };

  # ... (rest of the configuration remains the same)

  # Set your system version
  system.stateVersion = "23.11";
}
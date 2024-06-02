# Hikki's Dotfiles

```markdown
# NixOs
+ Colors: Catppuccin 
+ Term : Kitty
+ Shell : Zsh
+ GTK Theme: Catppuccin Frappe Standard Dark Blue
+ Launcher : wofi

```

## Screenshots

![Screenshot from 2024-06-02 17-12-51](https://github.com/fal3n-4ngel/dotfiles/assets/79042374/74e537b2-a3bf-4f00-9732-7b6dd1a81867)

![Screenshot from 2024-06-02 17-13-40](https://github.com/fal3n-4ngel/dotfiles/assets/79042374/6c0a59ee-1479-4184-b2fc-21bd849214c0)

![Screenshot from 2024-06-02 17-24-53](https://github.com/fal3n-4ngel/dotfiles/assets/79042374/ad82a040-ff55-4006-9a75-fe24c11f6ffc)

![image](https://github.com/fal3n-4ngel/dotfiles/assets/79042374/4e89a2b3-53c6-4800-9716-0ba4a2211e80)



## configuration.nix
```mardown
# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <catppuccin/modules/nixos>
    ];
  # Catpuccin
  catppuccin.flavor = "frappe";
  catppuccin.accent = "blue";
  catppuccin.enable = true;

  # Bootloader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;


  
 
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev"; # Use EFI mode, no device for BIOS
    useOSProber = true; # Enable os-prober to detect other OSes
   };
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";
  time.hardwareClockInLocalTime = true;
  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.hikki = {
    isNormalUser = true;
    description = "hikki";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    #  thunderbird
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # System Utilities
    wget
    curl
    htop
    unzip
    zip
    gnupg
    ripgrep
    fd
    jq
    neofetch
    kitty
    gnome.gnome-tweaks
    nomacs
    loupe
    telegram-desktop
    gnome.dconf-editor
    polybar
    waybar
    cmatrix
    gimp

    
    # Theming
    waypaper
    wayland
    wayland-protocols
    pywal
    swaybg
    wofi
    gtk3
    gdk-pixbuf
    libnotify
    catppuccin-gtk

    # Editors and IDEs
    vim
    neovim
    vscode
    gedit
    
    
    # Web Browsers
    google-chrome
    tor-browser
    brave

    # Media and Communication
    spotify
    discord

    # Shells and Shell Utilities
    bash
    zsh
    fish
    tmux
    alacritty

    # Version Control
    git
    gh
    mercurial
    subversion

    # Programming Languages and Tools
    gcc
    libgcc
    libgccjit
    python3
    python311Packages.pip
    nodejs_21
    openjdk
    temurin-jre-bin-21
    maven
    dotnet-sdk
    
    # Database Clients
    postgresql
    mysql
    sqlite

    # Containers and Virtualization
    docker
    
    # Utilities
    woeusb
    tor
    tor-browser-bundle-bin
    torsocks
    openvpn
    nmap
    ntfs3g
    tree

    # Aesthetic Themes
    numix-cursor-theme
    numix-icon-theme
    materia-theme
    papirus-icon-theme

    # others
    vlc
    pipx
    xorg.xbacklight
  ];
  
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 2d --keep-generations 5";
  };
  
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  
  services.flatpak.enable = true;
  system.stateVersion = "23.11"; # Did you read the comment?

}

```

## Folder Structure
```
hikki@nixos ~/.config » 
.
├── alacritty
│   ├── alacritty.toml
│   ├── alacritty.yml
│   ├── catppuccin-frappe.toml
│   ├── catppuccin-latte.toml
│   ├── catppuccin-macchiato.toml
│   └── catppuccin-mocha.toml
├── background
├── BraveSoftware
│   └── Brave-Browser
├── Code
│   ├── Backups
│   ├── blob_storage
│   ├── Cache
│   ├── CachedData
│   ├── CachedExtensionVSIXs
│   ├── CachedProfilesData
│   ├── Code Cache
│   ├── code.lock
│   ├── Cookies
│   ├── Cookies-journal
│   ├── Crashpad
│   ├── databases
│   ├── DawnCache
│   ├── Dictionaries
│   ├── GPUCache
│   ├── languagepacks.json
│   ├── Local Storage
│   ├── logs
│   ├── machineid
│   ├── Network Persistent State
│   ├── Preferences
│   ├── Service Worker
│   ├── Session Storage
│   ├── TransportSecurity
│   ├── User
│   └── WebStorage
├── dconf
│   └── user
├── discord
│   ├── 0.0.53
│   ├── blob_storage
│   ├── Cache
│   ├── Code Cache
│   ├── component_crx_cache
│   ├── Cookies
│   ├── Cookies-journal
│   ├── Crashpad
│   ├── DawnCache
│   ├── Dictionaries
│   ├── GPUCache
│   ├── Local State
│   ├── Local Storage
│   ├── modules.log
│   ├── Network Persistent State
│   ├── Preferences
│   ├── quotes.json
│   ├── sentry
│   ├── Session Storage
│   ├── settings.json
│   ├── Shared Dictionary
│   ├── shared_proto_db
│   ├── SharedStorage
│   ├── SingletonCookie -> 4603803728133209526
│   ├── SingletonLock -> nixos-53966
│   ├── SingletonSocket -> /tmp/scoped_dirjuCfgK/SingletonSocket
│   ├── TransportSecurity
│   ├── tray-connected.png
│   ├── tray-deafened.png
│   ├── tray-muted.png
│   ├── tray.png
│   ├── tray-speaking.png
│   ├── tray-unread.png
│   ├── Trust Tokens
│   ├── Trust Tokens-journal
│   ├── VideoDecodeStats
│   └── WidevineCdm
├── Electron
├── enchant
│   ├── he.dic
│   └── he.exc
├── evolution
│   └── sources
├── geary
├── gedit
│   └── accels
├── GIMP
│   └── 2.10
├── gnome-initial-setup-done
├── gnome-session
│   └── saved-session
├── goa-1.0
├── google-chrome
│   ├── AutofillStates
│   ├── BrowserMetrics
│   ├── BrowserMetrics-spare.pma
│   ├── CertificateRevocation
│   ├── component_crx_cache
│   ├── Consent To Send Stats
│   ├── CrashpadMetrics-active.pma
│   ├── Crash Reports
│   ├── Crowd Deny
│   ├── Default
│   ├── DeferredBrowserMetrics
│   ├── Dictionaries
│   ├── FileTypePolicies
│   ├── first_party_sets.db
│   ├── first_party_sets.db-journal
│   ├── FirstPartySetsPreloaded
│   ├── First Run
│   ├── GraphiteDawnCache
│   ├── GrShaderCache
│   ├── Guest Profile
│   ├── hyphen-data
│   ├── Last Version
│   ├── Local State
│   ├── Local Traces
│   ├── MEIPreload
│   ├── NativeMessagingHosts
│   ├── OnDeviceHeadSuggestModel
│   ├── optimization_guide_model_store
│   ├── OptimizationHints
│   ├── OriginTrials
│   ├── PKIMetadata
│   ├── PrivacySandboxAttestationsPreloaded
│   ├── Profile 1
│   ├── Safe Browsing
│   ├── SafetyTips
│   ├── segmentation_platform
│   ├── ShaderCache
│   ├── SSLErrorAssistant
│   ├── Subresource Filter
│   ├── System Profile
│   ├── TpcdMetadata
│   ├── TrustTokenKeyCommitments
│   ├── Variations
│   ├── Webstore Downloads
│   ├── WidevineCdm
│   └── ZxcvbnData
├── gtk-2.0
│   └── gtkfilechooser.ini
├── gtk-3.0
│   ├── bookmarks
│   └── settings.ini
├── gtk-4.0
│   └── settings.ini
├── ibus
│   └── bus
├── kitty
│   ├── Catppuccin-Macchiato.conf
│   ├── current-theme.conf
│   ├── kitty.conf
│   └── zsh_history
├── mimeapps.list
├── monitors.xml
├── nautilus
│   └── search-metadata
├── neofetch
│   └── config.conf
├── nextjs-nodejs
│   └── config.json
├── nomacs
│   └── Image Lounge.conf
├── polybar
│   ├── config.ini
│   ├── frappe.ini
│   ├── latte.ini
│   ├── macchiato.ini
│   └── mocha.ini
├── pulse
│   └── cookie
├── spotify
│   ├── prefs
│   └── Users
├── user-dirs.dirs
├── user-dirs.locale
├── vscode-sqltools
│   └── runningInfo.json
└── wofi
    ├── config
    ├── mocha_refrence.css
    └── style.css

106 directories, 77 files

```


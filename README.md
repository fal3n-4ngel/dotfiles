# ❄️ NixOS Dotfiles

*My simple configuration files for NixOS. Kinda suited for most dev purposes ig.. , and yes GNOME...*

## Screenshots

![image](https://github.com/user-attachments/assets/f03c5b6d-69a0-4a88-b5ff-45ac832e20cb)

![image](https://github.com/user-attachments/assets/15dbb64d-1d7a-40be-9e73-3b37e5673a8f)

![image](https://github.com/user-attachments/assets/3e09ea2c-7987-4e90-adc5-988067490460)


## ⚙️ Info

- **OS**: NixOS
- **WM**: Gnome
- **Shell**: Zsh
- **Term**: Kitty
- **Editor**: Neovim
- **Browser**: Firefox
- **Theme**: Catppuccin
- **Launcher**: rofi

## 🚀 Installation

### Prerequisites:

- [NixOS installed and running](https://nixos.org/manual/nixos/stable/index.html#ch-installation)
- [Flakes enabled](https://nixos.wiki/wiki/flakes)
- Root access

### Steps:

1. Clone the repository:

```bash
git clone https://github.com/fal3n-4ngel/dotfiles ~/.config/nixos && cd ~/.config/nixos
```

2. Edit the `configuration.nix` file to match your system requirements.

3. Build and switch to the new configuration:

```bash
sudo nixos-rebuild switch
```

## 🛠️ Usage

### Useful Commands

- Rebuild and switch system configuration:
```bash
sudo nixos-rebuild switch
```

- Update the system:
```bash
sudo nix-channel --update
```

## 📊 Packages

This configuration includes a wide range of packages for system utilities, productivity, theming, development, and more. Some highlights include:

- System: wget, curl, htop, unzip, zip, gnupg, ripgrep, fd, jq, neofetch
- Desktop: hyprland, waybar, wofi, kitty
- Development: vim, neovim, vscode, gcc, python3, nodejs, openjdk
- Browsers: google-chrome, firefox
- Media: spotify, vlc
- And many more!

For a full list of packages
```nix
  environment.systemPackages = with pkgs; [
    # System Utilities
    wget curl htop unzip zip gnupg ripgrep fd jq neofetch kitty
    gnome.gnome-tweaks nomacs loupe gnome.dconf-editor polybar waybar
    cmatrix w3m efibootmgr cmake cargo glibc glibcLocales

    # Productivity
    notion telegram-desktop gimp vlc chromium hunspell hunspellDicts.uk_UA hunspellDicts.th_TH
    
    # Theming
    waypaper wayland wayland-protocols pywal swaybg wofi gtk3 gdk-pixbuf
    libnotify catppuccin-gtk eww swww catppuccin rofi yazi

    # Editors and IDEs
    vim neovim vscode gedit jetbrains.clion

    # Web Browsers
    google-chrome tor-browser-bundle-bin

    # Media and Communication
    spotify discord

    # Shells and Shell Utilities
    bash zsh fish tmux alacritty

    # Version Control
    git gh mercurial subversion

    # Programming Languages and Tools
    gcc gnumake stdenv glibc libgcc stdenv.cc.cc.lib libgccjit
    python3 python311Packages.pip nodejs_21 nodePackages.pnpm
    openjdk temurin-jre-bin-21 maven dotnet-sdk flex bison

    # Database Clients
    postgresql mysql sqlite

    # PenTest
    wireshark wireguard-tools nmap wifite2

    # Gaming
    minecraft

    # Containers and Virtualization
    docker google-cloud-sdk

    # Utilities
    woeusb tor torsocks openvpn ntfs3g tree wine gjs

    # Aesthetic Themes
    numix-cursor-theme numix-icon-theme materia-theme
    papirus-icon-theme whitesur-icon-theme nordzy-icon-theme

    # Others
    pipx xorg.xbacklight

    # Added packages
    hyprland xdg-desktop-portal-hyprland xwayland polybar
    qt5ct qt6ct libva linuxHeaders alsa-lib jack2 wireplumber
    dart-sass networkmanagerapplet polkit_gnome pamixer
    python3Packages.requests python3Packages.jinja2 python3Packages.pillow
    gst_all_1.gst-plugins-base gst_all_1.gst-plugins-good gst_all_1.gst-plugins-ugly
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })

    # Add Home Manager
    home-manager
  ];
```

## 🎨 Theming

This setup uses the Catppuccin theme for a cohesive and visually appealing desktop environment. The theme is applied to various components including GTK, terminal, and system applications.

## 📝 Note

This configuration is personalized for my setup. You might need to adjust certain settings to fit your specific hardware and preferences.

## 📞 Contact

If you have any questions or suggestions, feel free to reach out:

- GitHub: [fal3n-4ngel](https://github.com/fal3n-4ngel)
- Name: Adithya Krishnan
- Email: hello@adithyakrishnan.com

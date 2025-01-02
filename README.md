<h1 align="center">
<a href='#'><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px"/></a>
  <br>
  <div>
    <a href="https://github.com/fal3n-4ngel/dotfiles/issues">
        <img src="https://img.shields.io/github/issues/fal3n-4ngel/dotfiles?color=fab387&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/fal3n-4ngel/dotfiles/stargazers">
        <img src="https://img.shields.io/github/stars/fal3n-4ngel/dotfiles?color=ca9ee6&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/fal3n-4ngel/dotfiles">
        <img src="https://img.shields.io/github/repo-size/fal3n-4ngel/dotfiles?color=ea999c&labelColor=303446&style=for-the-badge">
    </a>
    <a href="https://github.com/fal3n-4ngel/dotfiles/LICENSE">
        <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=ca9ee6&colorA=313244&colorB=cba6f7"/>
    </a>
    <br>
    </div>
</h1>

<h1 align="center">🐧 EndeavourOS Dotfiles 🐧</h1>

<div align="center">

*My configuration files for EndeavourOS. A dev-friendly setup with a focus on productivity and aesthetics.*

</div>

## ⚙️ Info
```mint
 -----------------------------------
    コンピューター
 ┌──────────────────────────────────────────┐
    OS : EndeavourOS x86_64
    Kernel : Linux 6.12.7-arch1-1
    Packages : 1470 (pacman)
    Display : 2560x1600 @ 165 Hz in 16 [Built-in]
    WM : bspwm (X11)
    Terminal : kitty 0.38.1
 └──────────────────────────────────────────┘
    : hikki@celestia
 ┌──────────────────────────────────────────┐
    CPU : AMD Ryzen 7 7840HS w/ Radeon 780M Graphics
    GPU : GeForce RTX 4060 Max-Q / Mobile
    GPU : AMD Radeon 780M
    GPU Driver : nvidia (proprietary) 565.77
    GPU Driver : amdgpu
   ﬙ Memory : 3.17 GiB / 14.81 GiB (21%)
   󱦟 OS Age  : 1 days
   󱫐 Uptime  : 6 mins
 └──────────────────────────────────────────┘
                ● ● ● ● ● ● ● ●
```

## Screenshots

![Shot-2025-01-02-192109](https://github.com/user-attachments/assets/ea4427a1-0f81-42ec-a376-c2a61e61d669)

![Shot-2025-01-02-202144](https://github.com/user-attachments/assets/d731a706-66ba-408a-9f46-0f69e6f69281)

![Shot-2025-01-02-202610](https://github.com/user-attachments/assets/9eddf6f5-c91a-4bc7-afa3-e7763d739d1d)





## 🚀 Installation

### Prerequisites:

- EndeavourOS with Hyprland
- Git
- yay package manager

### Steps:

1. Clone the repository:
```bash
git clone https://github.com/fal3n-4ngel/dotfiles ~/.config && cd ~/.config
```

2. Install required packages:
```bash
yay -S hyprland waybar rofi kitty neovim firefox-developer-edition \
    catppuccin-gtk-theme-mocha papirus-icon-theme \
    nerd-fonts-jetbrains-mono polybar dunst picom
```

3. Copy configurations:
```bash
cp -r * ~/.config/
```

## 🛠️ Usage

### Useful Commands

- Update system:
```bash
yay -Syu
```

- Install a package:
```bash
yay -S package_name
```

## 📊 Key Packages

This configuration includes essential packages for development and daily use:

### System & WM
- Hyprland (Window Manager)
- Waybar (Status bar)
- Rofi (Application launcher)
- Dunst (Notifications)
- Picom (Compositor)

### Development
- Neovim (Text editor)
- VS Code
- Git
- Python, Node.js, Rust
- Docker
- Various development tools

### Applications
- Firefox Developer Edition
- Kitty terminal
- Spotify
- Discord
- Telegram

### Theming
- Catppuccin GTK theme
- Papirus icon theme
- JetBrainsMono Nerd Font
- Custom Waybar theme
- Custom Rofi theme

## 🎨 Theming

The setup uses the Catppuccin Mocha theme across all applications for a consistent look:
- GTK Theme: Catppuccin-Mocha
- Icons: Papirus
- Terminal: Kitty with Catppuccin
- Neovim: Custom theme based on Catppuccin
- Waybar: Custom Catppuccin-inspired theme

## 📝 Note

This configuration is personalized for my workflow. You might want to adjust settings according to your preferences and hardware.

## 📞 Contact

If you have any questions or suggestions, feel free to reach out:

- GitHub: [fal3n-4ngel](https://github.com/fal3n-4ngel)
- Name: Adithya Krishnan
- Email: hello@adithyakrishnan.com

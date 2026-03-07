# coreshell
An simple and lightweight dotfile for Niri Arch-based GNU/Linux distributions

DEPS:
```txt
swww
awww
eza
fastfetch
waybar
nwg-bar
waypaper
wofi
ttf-jetbrains-mono-nerd
```
Recommended install (backup first, this overwrites your existing dotfiles)
```bash
git clone https://github.com/zyro-or-xyro/coreshell
cd .config
rm -rf btop kitty niri waybar wofi fastfetch matugen nwg-bar waypaper
cd ~/coreshell/dotfiles
mv -r * ~/.config
cd ..
mv .zshrc ~/
```

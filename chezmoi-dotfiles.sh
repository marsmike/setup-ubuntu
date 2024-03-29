echo "Installing chezmoi and loading my dotfiles..."
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply marsmike
echo "Moving chezmoi to ~/.local/bin/chezmoi"
mkdir -p ~/.local/bin && mv ./bin/chezmoi ~/.local/bin/chezmoi && rm -rv ./bin
echo "Done!"

echo "Loading Tmux plugin manager tpm from git"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Done!"

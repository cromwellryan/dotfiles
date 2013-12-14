## Todo

* Move setup to rake tasks

## Setup - Mac (possibly Linux - not confirmed lately)

```
ln -s "$PWD/.agignore" ~/.agignore
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.bash_profile" ~/.bash_profile
ln -s "$PWD/.bashrc" ~/.bashrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.gitmessage.txt" ~/.gitmessage.txt
ln -s "$PWD/.iex" ~/.iex
ln -s "$PWD/.tmux.conf" ~/.tmux.conf
ln -s "$PWD/.tmux.start.sh" ~/.tmux.start.sh
ln -s "$PWD/.zshenv" ~/.zshenv
ln -s "$PWD/.zshrc" ~/.zshrc
ln -s "$PWD/tmuxinator.zsh" ~/tmuxinator.zsh
```

#####Windows - Elevated Powershell 2.0+#####

```
cd ~
mkdir ~/.vim

cmd /c mklink %USERPROFILE%\.vimrc %USERPROFILE%\dotfiles\.vimrc
cmd /c mklink %USERPROFILE%\_vsvimrc %USERPROFILE%\dotfiles\_vsvimrc
cmd /c mklink /D %USERPROFILE%\.vim\ftplugin %USERPROFILE%\dotfiles\ftplugin

cmd /c mklink %USERPROFILE%\.gitconfig %USERPROFILE%\dotfiles\.gitconfig

mkdir ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git $($env:userprofile)\.vim\bundle\vundle
```

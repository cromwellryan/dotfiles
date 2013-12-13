## Todo

* Move setup to rake tasks

## Setup - Mac (possibly Linux - not confirmed lately)

```
ln -s "$PWD/dotfiles/.vimrc" ~/.vimrc
ln -s "$PWD/dotfiles/.bash_profile" ~/.bash_profile
ln -s "$PWD/dotfiles/.bashrc" ~/.bashrc
ln -s "$PWD/dotfiles/.gitconfig" ~/.gitconfig
ln -s "$PWD/dotfiles/.gitmessage.txt" ~/.gitmessage.txt
ln -s "$PWD/dotfiles/.iex" ~/.iex
ln -s "$PWD/dotfiles/.tmux.conf" ~/.tmux.conf
ln -s "$PWD/dotfiles/.tmux.start.sh" ~/.tmux.start.sh
ln -s "$PWD/dotfiles/.zshenv" ~/.zshenv
ln -s "$PWD/dotfiles/.zshrc" ~/.zshrc
ln -s "$PWD/dotfiles/tmuxinator.zsh" ~/tmuxinator.zsh
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

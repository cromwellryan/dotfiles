
## Setup - Mac
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/cromwellryan/dotfiles/mac-setup/mac)"
```



## Windows - Elevated Powershell 2.0+
_Warning: No clue how well this works any longer_

```
cd ~
mkdir ~/.vim

cmd /c mklink %USERPROFILE%\.vimrc %USERPROFILE%\dotfiles\.vimrc
cmd /c mklink %USERPROFILE%\_vsvimrc %USERPROFILE%\dotfiles\_vsvimrc
cmd /c mklink /D %USERPROFILE%\.vim\ftplugin %USERPROFILE%\dotfiles\ftplugin

cmd /c mklink %USERPROFILE%\.gitconfig %USERPROFILE%\dotfiles\.gitconfig

mkdir ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git $($env:userprofile)\.vim\bundle\vundle

vim +BundleInstall
```

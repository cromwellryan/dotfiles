## Todo

* Move setup to rake tasks

## Setup (Windows)


**Vim Config**

```
cd ~
cmd /c mklink %USERPROFILE%\.vimrc %USERPROFILE%\dotfiles\.vimrc
cmd /c mklink %USERPROFILE%\_vsvimrc %USERPROFILE%\dotfiles\_vsvimrc
mkdir ~/.vim
cmd /c mklink /D %USERPROFILE%\.vim\ftplugin %USERPROFILE%\dotfiles\ftplugin
```
  
## Setup (nix)

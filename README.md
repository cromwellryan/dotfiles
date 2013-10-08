## Todo

* Move setup to rake tasks

## Setup - Vim

#####Windows - Elevated Powershell 2.0+#####

```
cd ~
mkdir ~/.vim

cmd /c mklink %USERPROFILE%\.vimrc %USERPROFILE%\dotfiles\.vimrc
cmd /c mklink %USERPROFILE%\_vsvimrc %USERPROFILE%\dotfiles\_vsvimrc
cmd /c mklink /D %USERPROFILE%\.vim\ftplugin %USERPROFILE%\dotfiles\ftplugin
```

```
git clone https://github.com/gmarik/vundle.git %USERPROFILE%\.vim\bundle\vundle
```
  



# Reset PATH
#export PATH= \
#
## Customize to your needs...
for dir in \
  /Library/Frameworks/Python.framework/Versions/3.3/bin \
  /usr/local/bin \
  /usr/local/sbin \
  /usr/local/share/npm/bin \
  /usr/bin \
  /bin \
  /usr/sbin \
  /sbin \
  /usr/git-tf \
; do
  if [[ -d $dir ]]; then PATH+=:$dir fi
done

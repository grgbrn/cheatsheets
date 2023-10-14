# add an exported var to .bashrc
set -Ux SOME_VARIABLE bar

# add to path
fish_add_path $NEWPATH

# change extension of all files in a directory
for x in *.m4v
  mv $x (path change-extension '.mp4' $x)
 end

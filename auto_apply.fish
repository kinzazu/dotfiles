#!/usr/bin/env fish
set lis_dirs (ls -d */)

for dir in $lis_dirs
  echo "applying settings for the $dir dir"
  stow $dir
end


# MACOS helpers
function ip-short
    ifconfig | awk '/^[a-z]/ { iface=$1 } /inet / { print iface "\t" $2 }'
end

function clear-dns
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;.
end


# add enviroments
fish_add_path /opt/homebrew/opt/node@22/bin
fish_add_path $HOME/.local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /Users/nikoleontiev/Library/Application Support/JetBrains/Toolbox/scripts
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx EDITOR nvim

# Setting PATH for all Python
#3.9
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.9/bin
#3.10
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.10/bin
#3.11
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.11/bin

set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.13/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nikoleontiev/google-cloud-sdk/path.fish.inc' ]; . '/Users/nikoleontiev/google-cloud-sdk/path.fish.inc'; end

if not set -q GOPATH;
    set -gx  GOPATH $HOME/go
end


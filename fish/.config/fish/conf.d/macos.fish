# MACOS helpers
function ip-short
    ifconfig | awk '/^[a-z]/ { iface=$1 } /inet / { print iface "\t" $2 }'
end

function clear-dns
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder;.
end


# add enviroments
set -gx -a PATH $HOME/.local/bin
set -gx -a PATH /opt/homebrew/bin
set -gx HOMEBREW_NO_AUTO_UPDATE 1
set -gx -a PATH /Users/nikoleontiev/Library/Application Support/JetBrains/Toolbox/scripts
set -gx EDITOR nvim

# Setting PATH for all Python
#3.9
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.9/bin
#3.10
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.10/bin
#3.11
set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.11/bin

set -gx -a PATH /Library/Frameworks/Python.framework/Versions/3.13/bin


if not set -q GOPATH;
    set -gx  GOPATH $HOME/go
end


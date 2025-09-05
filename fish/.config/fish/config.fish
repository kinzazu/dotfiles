if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Universal abbreviations
abbr -a -- ap ansible-playbook
abbr -a wssh --position command --set-cursor "ssh % sudo tcpdump -i any -U -s0 -w - 'port 80' | wireshark -k -i -"
abbr -a gc --position command --set-cursor "git commit -m '%'"
abbr -a gcl --position command --set-cursor "git clone --recurse-submodules %"
abbr -a vim --position command --set-cursor "nvim %"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

switch (uname)
    case Darwin
		source ~/.config/fish/conf.d/macos.fish
    case Linux
		source ~/.config/fish/conf.d/linux.fish
end

#set -gx LC_ALL "en_US.UTF-8"
set -gx EDITOR nvim

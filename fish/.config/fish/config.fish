if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Universal abbreviations
# ansible
abbr -a -- ap "ansible-playbook"
abbr -a -- aps ansible-playbook --syntax-check 

# git
abbr -a gc --position command --set-cursor "git commit -m '%'"
abbr -a gco --position command "git checkout"
abbr -a gcl --position command --set-cursor "git clone --recurse-submodules %"
abbr -a gl --position command --set-cursor "git log --graph --oneline %"

# vim
abbr -a --position command -- v "nvim %"
abbr -a --position command -- sv "sudo nvim"
abbr -a --position command -- v nvim 

# docker
abbr -a dc  --position command --set-cursor "docker compose -f docker-compose.yml %"
abbr -a dce --position command --set-cursor "docker compose -f docker-compose.yml exec -it %"

# various
abbr -a wssh --position command --set-cursor "ssh % sudo tcpdump -i any -U -s0 -w - 'port 80' | wireshark -k -i -"

# Kubernetes
alias k="kubectl"
abbr -a k --position command --set-cursor "kubectl %"
abbr -a --set-cursor='%' -- kgp 'kubectl get po %'
abbr -a --set-cursor='%' -- kgs 'kubectl get svc %'
abbr -a --set-cursor='%' -- kgpa 'kubectl get pods -A -o wide %'
abbr -a --set-cursor='%' -- kgn 'kubctl get nodes %'

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

switch (uname)
    case Darwin
		source ~/.config/fish/conf.d/macos.fish
    case Linux
		source ~/.config/fish/conf.d/linux.fish
end

#set -gx LC_ALL "en_US.UTF-8"
set -gx EDITOR nvim

function edit-nvim-config
  nvim ~/.config/nvim/init.lua
end

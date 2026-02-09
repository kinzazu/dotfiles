abbr -a pi --position command --set-cursor "sudo pacman -S %"

alias rm="rm -i"


# eval agent if none in env
function eval_ssh_agent
 if ! test -n "$SSH_AUTH_SOCK"
#   echo "touchdown"
   eval (ssh-agent -c)
   ssh-add ~/.ssh/arch_key
   #else
   # echo "[DEBUG]: SSH AGENT has been already loaded"
   end
end

if status is-interactive
  eval_ssh_agent
end

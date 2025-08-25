# Autocompletion for fish shell.
# Disable files by default
complete -c container -f
complete -c container -a build  -d 'Build an image from a Dockerfile'
complete -c container -a registry  -d 'Manage registry configurations'
complete -c container -a create  -d 'Create a new container'
complete -c container -a delete  -d 'Delete one or more containers'
complete -c container -a rm -r -d 'Delete one or more containers'
complete -c container -s -h -d 'Show help information.'
#complete -c container -o  -r -d 'Build an image from a Dockerfile'

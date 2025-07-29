# add windows ssh binaries to the path
fish_add_path -g "/mnt/c/program files/openssh"

# use the windows binaries for ssh and ssh-add
alias ssh     "ssh.exe"
alias ssh-add "ssh-add.exe"

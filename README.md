# Dotfiles

![dotfiles-graphic](https://cloud.githubusercontent.com/assets/2628905/7765081/7d1e91ea-001f-11e5-9971-8af41cd0b3b6.jpg)

My dotfiles kill you.

## Install

Run this:

```sh
git clone https://github.com/rossedman/dotfiles.git ~/.dotfiles

./bootstrap.sh 

cat "$PASSWORD" > ~/.vault_pass.txt 

ANSIBLE_VAULT_PASSWORD_FILE=~/.vault_pass.txt

ansible-playbook setup.yml --vault-password-file ~/.vault_pass.txt
```


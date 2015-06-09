alias reload!='. ~/.zshrc'
alias hosts='sudo nano /private/etc/hosts'
alias pkg='composer install && bundle install && npm install && bower install'
alias do_info='curl -X GET "https://api.digitalocean.com/v2/account/keys" -H "Authorization: Bearer $DO_TOKEN"'
export SSH_FINGERPRINT=$(ssh-keygen -lf ~/.ssh/id_rsa.pub | awk '{print $2}')

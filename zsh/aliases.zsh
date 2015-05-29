alias reload!='. ~/.zshrc'
alias hosts='sudo nano /private/etc/hosts'
alias pkg='composer install && bundle install && npm install && bower install'

# boot2docker
$(boot2docker shellinit 2> /dev/null)

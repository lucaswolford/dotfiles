alias gti='git'

alias ..="cd ../.."
alias ...="cd ../.."

alias g='git'
alias s='status'
alias f='fetch'
alias gnm='git branch --no-merged'

alias rc='script/console'
alias rs='script/server'
alias rg='script/generate'

alias unicorn="unicorn_rails -p 3000"
alias allspecs="spec spec/models; spec spec/controllers"

alias skycon="heroku run script/console --app visions-sky"
alias stagingcon="heroku run script/console --app visions-staging"
alias testcon="heroku run script/console --app visions-test"

alias skylog="heroku logs --tail --app visions-sky"
alias skyto="heroku logs --tail --app visions-sky | grep -i 'h12'"

alias grouper="ssh -i gsg-keypair.pem ubuntu@ec2-54-224-31-138.compute-1.amazonaws.com"

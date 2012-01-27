alias r='rvm use 1.9.2'

alias sc='script/console'
alias ss='script/server -p `available_rails_port`'
alias sg='script/generate'

alias migrate='rake db:migrate db:test:clone'

alias s="ps aux | grep \"[r]uby\" | grep script/server || echo \"You're not running any, dawg.\""
#alias rake='noglob rake'
alias ruby='noglob ruby'
alias rdebug='noglob rdebug'

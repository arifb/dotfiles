[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Rubies should be built using gcc rather than llvm-gcc
# causing all hell to break loose on my linode; let it use whatever gcc it wants
# export CC=gcc-4.2

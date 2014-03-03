# Use gnu ls
# Made possible through contributions from generous benefactors like
# `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color --time-style=\"+%Y-%m-%d %H:%M:%S\""
  alias l="gls -lAh --color --time-style=\"+%Y-%m-%d %H:%M:%S\""
  alias ll="gls -l --color --time-style=\"+%Y-%m-%d %H:%M:%S\""
  alias la="gls -A --color --time-style=\"+%Y-%m-%d %H:%M:%S\""
fi

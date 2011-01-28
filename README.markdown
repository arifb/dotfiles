# holman does dotfiles and now so do i

## dotfiles

Your dotfiles are how you personalize your system. These are mine. The very
prejudiced mix: OS X, zsh, Ruby, Rails, git, rvm, vim.

Holman was a little tired of having long alias files and everything strewn about
(which is extremely common on other dotfiles projects, too). That led to this
project being much more topic-centric. Like a true haxor he realized he could 
split a lot of things up into the main areas he used and structured the project 
accordingly.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read Holman's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install prereqs

Have [hub](http://chriswanstrath.com/hub/) installed

## install

- `git clone git://github.com/holman/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.

## what's inside

A lot of what's inside is just aliases: `gs` for `git status`, `gl` for `git
pull --rebase --prune`, for example. You can browse the `aliases.zsh` files in
each topic directory. There's also a collection of scripts in `bin` you can
browse. A few notable ones:

###rails
- `s` pings your system for any running Rails apps, and `deathss` will then
  kill all of them indiscriminately. `ss` starts up a new Rails server on the
  next available port- if 3000 is taken, it'll spin up your server on 3001.

###system
- `c` is an autocomplete shortcut to your projects directory. For example, `c
  git` and then hitting tab will autocomplete to `github`, and then it simply
  changes to my `github` directory.
- `check [filename]` is a quick script that tells you whether a domain is
  available to register.
- `smartextract [filename]` will extract about a billion different
  compressed/uncompressed/whatever files and you'll never have to remember the
  syntax.
- `backup` is a quick hook into `rsync` to backup a selection of files. Check
  out the comments for more details.

- If you want some more colors for things like `ls`, install grc: `brew install
  grc`.
- If you install the excellent [rvm](http://rvm.beginrescueend.com) to manage
  multiple rubies, your current branch will show up in the prompt. Bonus.

## thanks

Holman forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of his changes and tweaks inspired him to roll his own.

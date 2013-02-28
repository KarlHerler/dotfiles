#Mah dotfiles

Organization and most of the documenation, including what you read here is
based on [holmans dotfiles](https://github.com/holman/dotfiles). 
Some files are more or less based on holmans, 
[mathiasbyneses](https://github.com/mathiasbynens/dotfiles) and others.


## Install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.


## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.


## Thanks

Most of the actual dotfiles here are things I've collected from loads of 
places but the idea of the organization and most code to orchestrate this
is the great work of [Zach Holman](https://github.com/holman) and his 
excellent [dotfiles repository](https://github.com/holman/dotfiles). I've
also used themes and tweaks from [Robby Russells](https://github.com/robbyrussell)
excellent [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)-project.

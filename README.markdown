# vim-mesa

A Vim plugin for [Mesa][1] development.


## Installation

If you don't have a preferred installation method, I recommend using Tim Pope's
[pathogen][2]. Install it like so:

    cd ~/.vim/bundle
    git clone git://github.com/tpope/vim-pathogen pathogen
    vim -u NONE -c "helptags pathogen/doc" -c q

Then install this plugin with:

    cd ~/.vim/bundle
    git clone git://github.com/chadversary/vim-mesa.git mesa
    vim -u NONE -c "helptags mesa/doc" -c q


## FAQ

- **What does this plugin do?**

  For now, the plugin sets some options to help your code conform to Mesa's
  codestyle.


## Recommendations

If you're a Mesa developer, I recommend these additional Vim plugins:

- glsl (http://github.com/tikhomirov/vim-glsl)
- git (http://github.com/tpope/vim-git)
- dispatch (http://github.com/tpope/vim-dispatch)
- fugitive (http://github.com/tpope/vim-fugitive)
- sensible (http://github.com/tpope/vim-sensible)



[1]: http://cgit.freedesktop.org/mesa/mesa
[2]: https://github.com/tpope/vim-pathogen

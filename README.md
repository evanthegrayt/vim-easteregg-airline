# vim-easteregg-airline
Airline colorscheme that is the companion to
[vim-easteregg](https://github.com/evanthegrayt/vim-easteregg).

## Installation
### Version 8
If you're using `vim` version 8, clone the directory under one of your package
directories.

```bash
mkdir -p ~/.vim/pack/evanthegrayt/start
git clone https://github.com/evanthegrayt/vim-easteregg-airline.git \
    ~/.vim/pack/evanthegrayt/start/easteregg-airline
```

Then set the theme in your `~/.vim/vimrc` or `~/.vimrc`.

```vim
let g:airline_theme = 'easteregg'
```

### Pathogen
If you're not using version 8, I recommend installing
[pathogen](https://github.com/tpope/vim-pathogen), and cloning the repository in
`~/.vim/bundle`. This will allow you to pull updates when they're available.

### No Package Manager
If you're not interested in keeping the plugin up to date, just copy the
contents of the `autoload` directory to `~/.vim/autoload`.

## Self Promotion
I do these projects for fun, and I enjoy knowing that they're helpful to people.
Consider starring [the
repository](https://github.com/evanthegrayt/vim-easteregg-airline) if you like it! If
you love it, follow me [on github](https://github.com/evanthegrayt)!

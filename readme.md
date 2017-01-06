![](https://github.frapsoft.com/top/vim-collection.png)

# vim-collection

_Collection of my vim settings and documentations_

## Table of Content

- [macvim](#macvim)
- [vundle](#vundle)
- [editorconfig](#editorconfig)
- [shellcheck](#shellcheck)


## macvim

### Installation

```bash
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
brew install macvim --with-override-system-vim --with-lua --with-luajit
brew linkapps macvim
```

Repository: <https://github.com/macvim-dev/macvim>


## vundle

### Installation

`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Repository: <https://github.com/VundleVim/Vundle.vim>

Vundle is a plug-in manager for vim.  
To install Plugins mentioned here run inside vim `:PluginInstall` after adding them them to your vim settings.

## editorconfig

### Installation

OS X: `brew install editorconfig`

Website: <http://editorconfig.org/>

### Configuration

`Plugin 'editorconfig/editorconfig-vim'`

## shellcheck

Quick Introduction how to use shellcheck with vim.
This will run shellcheck static file analysis for `sh` and `bash` files.

### Installation

OS X: `brew install shellcheck`

Shellcheck Repository: <https://github.com/koalaman/shellcheck>

### Configuration

```
" shellcheck settings
set makeprg=shellcheck\ -f\ gcc\ %
au BufWritePost * :silent make | redraw!

au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow

" define your exclude rules here
let g:syntastic_sh_shellcheck_args="-e SC2148"
```

![](https://github.frapsoft.com/top/vim-collection.png)

# vim-collection

_Collection of my vim settings and documentations_


## shellcheck

Quick Introduction how to use shellcheck with vim.
This will run shellcheck static file analysis for `sh` and `bash` files.

### Install Shellcheck

macOS: `brew install shellcheck`

Shellcheck Repository: <https://github.com/koalaman/shellcheck>

### vim settings

load [shellcheck.vim](https://github.com/ellerbrock/vim-collection/blob/master/shellcheck.vim) or add this to your `.vimrc` file:

```
" shellcheck settings
set makeprg=shellcheck\ -f\ gcc\ %
au BufWritePost * :silent make | redraw!

au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow

" define your exclude rules here
let g:syntastic_sh_shellcheck_args="-e SC2148"
```

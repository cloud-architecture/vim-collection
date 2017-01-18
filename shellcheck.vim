if (&ft=='sh' || &ft=='bash')
  set makeprg=shellcheck\ -f\ gcc\ %
  au BufWritePost * :silent make | redraw!

  au QuickFixCmdPost [^l]* nested cwindow
  au QuickFixCmdPost    l* nested lwindow

  let g:syntastic_sh_shellcheck_args="-e SC2148"
endif


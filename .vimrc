
syntax on
set cindent
set laststatus=2

set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

function TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z


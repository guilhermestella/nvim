" let g:airline_section_b = '%-0.100{getcwd()}'
let g:airline_section_c = '%t'
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#branch#empty_message = ''
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

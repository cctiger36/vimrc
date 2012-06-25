set guioptions-=T
set background=light
colorscheme solarized
set cul

" remap cmd + w to close tab
map <D-w> :tabclose<CR>

" remap cmd + n to new tab
map <D-n> :tabnew<CR>

" map cmd + enter to switch to full screen
map <D-Enter> :set invfu<CR>

" map cmd+1~9 to switch tab 1~9
for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
endfor

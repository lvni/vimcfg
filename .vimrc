set expandtab ts=4 sw=4 sts=4 tw=100

" 设置NerdTree
map <F6> :NERDTreeMirror<CR>
map <F6> :NERDTreeToggle<CR>
map <F7> :bprevious<CR>
map <F8> :bnext<CR>

set nobackup
 
"Setup Taglist
let Tlist_Ctags_Cmdi = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
map <F9> :TlistToggle<CR>

" Check PHP Syntax 
map <F5> :!php -l %<CR>

" Setup Tags 
function! BuildTag()
   ":!ctags -R .
   :!ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php -R .
   :set tags=tags
endfunction
map <F10> :call BuildTag()<CR>

set number
set mouse=a
autocmd vimenter * NERDTree
hi Comment ctermfg=yellow
set clipboard+=unnamed
set tabstop=2
set shiftwidth=2

inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
inoremap jj <Esc>

" open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
nmap go <Plug>(openbrowser-open)

noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a
map <C-n> :NERDTreeToggle<CR>
set backspace=indent,eol,start
noremap <C-r> :!ruby %
noremap <C-c> :!rake log:clear
noremap <C-l> :e!
noremap <SPACE>ro :Einitializer
noremap <SPACE>cn :Econtroller
noremap <SPACE>ge :Elib

noremap <SPACE>q :q
noremap <SPACE>w :w
noremap <SPACE>qw :qw

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/taka/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/taka/.cache/dein')
  call dein#begin('/Users/taka/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/taka/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-endwise')
  call dein#add('cohama/lexima.vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('tyru/open-browser.vim')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()

  call dein#install()
endif

"End dein Scripts------------------------

"NERDTreeの設定

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowHidden = 1
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('/', 'cyan', 'none', 'cyan', '#151515')



autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif





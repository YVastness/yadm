" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|



" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键的前缀，即<Leader>
let mapleader=" "

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
"set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
"切换buffer不需要保存
set hidden
" ===================== Start of Keybindings Settings =====================
" 定义快捷键到行首和行尾
nmap <C-a> ^
nmap <C-e> $
inoremap jj <ESC>
" 设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ===================== Start of Plugin List=====================
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'
Plug 'fadein/vim-FIGlet'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'puremourning/vimspector'
"Plug 'codota/tabnine-vim'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

"主题插件
Plug 'overcache/NeoSolarized'
Plug 'jacoborus/tender.vim'
" colorscheme tender
Plug 'rakr/vim-one'
" colorscheme one
Plug 'drewtempelmeyer/palenight.vim'
" colorscheme palenight
Plug 'KeitaNakamura/neodark.vim'
" colorscheme neodark
Plug 'crusoexia/vim-monokai'
" colorscheme monokai
Plug 'morhetz/gruvbox'
" colorscheme gruvbox

"状态栏插件
"vim-buftabline
Plug 'ap/vim-buftabline'
"Plug 'Lokaltog/vim-powerline'

"spaceline.vim
Plug 'glepnir/spaceline.vim'
" Use the icon plugin for better behavior
Plug 'ryanoasis/vim-devicons'

" 插件列表结束
call plug#end()
" ===================== Start of Theme Settings =====================
" 支持真彩色
set termguicolors
" 配色方案
set background=dark
"colorscheme tender
"colorscheme one
"colorscheme palenight
"colorscheme neodark
"colorscheme monokai
"colorscheme gruvbox
colorscheme NeoSolarized
"colorscheme solarized

" 设置状态栏主题风格
"let g:Powerline_colorscheme='solarized256'

" ==
" == spaceline.vim
" ==
let g:spaceline_seperate_style = 'arrow'
let g:spaceline_colorscheme = 'dracula'
let g:spaceline_custom_vim_status = {"n": "🅝 ","V":"🅥 ","v":"🅥 ","\<C-v>": "🅥 ","i":"🅘 ","R":"🅡 ","s":"🅢 ","t":"🅣 ","c":"🅒 ","!":"SE"}

" ==
" == vim-buftabline
" ==
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>
"  此选项的值指定何时将带有缓冲区标签的行
"  显示：
"           0：从不
"           1：仅当至少有两个缓冲区时
"           2：总是
let g:buftabline_show = 1
" 此选项的值指定如何为缓冲区标签编号：
"            0：无编号
"            1：缓冲区编号
"            2：序号
let g:buftabline_numbers = 2
" 当打开时，缓冲区的状态在缓冲区标签中指示。现在
"   指示的唯一状态是缓冲区是否被“修改”。
let g:buftabline_indicators = 1
" 启用时，将在选项卡之间绘制一条垂直线。
let g:buftabline_separators = 0
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)
" ===================== start of plugin settings =====================
" ===
" === fzf
" ===
" the straightforward way to use fzf.vim is appending this line to your vimrc
"source /usr/share/doc/fzf/examples/fzf.vim
" find file
noremap \ :FZF<CR>
" find history
noremap <C-h> :MRU<CR>
" find lines containing keywords
noremap <C-l> :LinesWithPreview<CR>
" find buffer
noremap <C-b> :Buffers<CR>
noremap <C-t> :BTags<CR>
noremap <leader>h :History:<CR>
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'


autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
  \ call fzf#vim#buffers(
  \   '',
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:0%', '?'),
  \   <bang>0)

command! -bang -nargs=* LinesWithPreview
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
    \   fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --sort'}, 'up:50%', '?'),
    \   1)

command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())


" ==
" == Git-Gutter
" ==
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ==
" == Undotree
" ==
nnoremap un :UndotreeToggle<CR>

" ==
" == Vimspector
" ==
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools' ]
let g:vimspector_enable_mappings = 'HUMAN'
"2. 添加快捷键<leader>db快速生成.vimspector.json
"vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"let g:vimspector_base_dir=expand('~/.vim/.vimspectorjson')
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.vim/.vimspectorjson/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.vim/.vimspectorjson',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>db :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
"sign define vimspectorPC text=¶ texthl=SpellBad

" ===
" === startify
" ===
" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]


" ==
" == nerdcommenter
" ==
"创建默认映射
"let  g: NERDCreateDefaultMappings  =  1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==
" == coc.nvim
" ==
let g:coc_global_extensions = ['coc-pairs','coc-translator','coc-json','coc-clangd','coc-python','coc-vimlsp','coc-snippets','coc-marketplace','coc-flutter-tools']

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"使用Tab进行选择补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 使用`[g` 和 `]g`去导航诊断
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code 导航.
" 列出定义列表
nmap <silent> gd <Plug>(coc-definition)
" 转至类型定义
nmap <silent> gy <Plug>(coc-type-definition)
" 待办事项清单
nmap <silent> gi <Plug>(coc-implementation)
" 列出参考列表
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
" 按住光标时突出显示符号及其引用。
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Applying codeAction to the selected region.
" 将codeAction应用到所选区域。
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ===
" ===
"coc-translator
" NOTE: do NOT use `nore` mappings
" 弹出翻译窗口
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
vmap <Leader>r <Plug>(coc-translator-rv)


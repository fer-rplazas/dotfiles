if exists('g:vscode')
    " Nothing
else
    " Tab options:
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent

    " Lines and Numbering:
    set relativenumber
    set nu
    set t_ut=

    " System stuff
    set exrc
    set updatetime=50
    set hidden
    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile
    " Use system clipboard:
    set clipboard=unnamedplus

    " Usability:
    set scrolloff=8
    set noerrorbells
    set nowrap
    set smartcase
    set foldmethod=indent

    " Visuals:
    set termguicolors
    set signcolumn=yes
    set colorcolumn=88
    set cmdheight=2
    set guicursor=i:hor20-Cursor/lCursor
    syntax on

    " Search:
    set incsearch

    nnoremap <silent> <CR> :noh<CR><CR>
    " inoremap <Tab> <S-Tab>

    " Plug-ins:
    call plug#begin('~/.vim/plugged')
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'nvim-telescope/telescope.nvim'

        Plug 'Yggdroot/indentLine'

        Plug 'gruvbox-community/gruvbox'

        Plug 'mbbill/undotree'
        Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

        Plug 'neovim/nvim-lspconfig'
        Plug 'nvim-lua/completion-nvim'
        Plug 'dense-analysis/ale'
        "Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}

        Plug 'nelstrom/vim-visual-star-search'
        Plug 'junegunn/limelight.vim'
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'tpope/vim-commentary'
    call plug#end()

    let g:gruvbox_contrast_dark = 'hard'
    colorscheme gruvbox
    set background=dark

    " Remaps:
    let mapleader = " " " map leader to Space
    inoremap ii <Esc>

    " let g:python3_host_prog = <path to python exec with pynvim installed>
    " leave blank to use default python path

    " Plug in configs:
    " Snippets
    let g:UltiSnipsExpandTrigger="<tab>"

    " Treesitter:
    lua require'nvim-treesitter.configs'.setup{ highlight = { enable=true } }

    " Telescope:
    nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
    nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>

    " LSP:
    set completeopt=menuone,noinsert,noselect
    let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
    " lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
    lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
    "" Auto-Format with Ale since PyRight doesn't support formatting.
    vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

    nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
    nnoremap <leader>k :lua vim.lsp.buf.hover()<CR>
    nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>

    let g:ale_fix_on_save = 1
    let g:ale_fixers = {'python': ['black', 'isort']}
    let g:ale_linters = {'python': []}
endif

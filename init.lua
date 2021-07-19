require "paq" {
	"savq/paq-nvim"; -- paq manages itself
	
    "neovim/nvim-lspconfig";
	"nvim-treesitter/nvim-treesitter"; 
	"preservim/nerdtree"; 
    {"shougo/deoplete.nvim", run = vim.fn['remote#host#UpdateRemotePlugins']}; 
	"shougo/deoplete-lsp"; 
	
    -- auto close 
    "jiangmiao/auto-pairs";
    "tpope/vim-surround"; 
    
    -- code folding
    "tmhedberg/SimpylFold";

    -- customization
    "drewtempelmeyer/palenight.vim";
    
    "vim-airline/vim-airline";
    "vim-airline/vim-airline-themes";

    "drewtempelmeyer/palenight.vim";
    "arcticicestudio/nord-vim";
    "altercation/vim-colors-solarized";
    "morhetz/gruvbox";
    "jnurmine/zenburn";
    
    "ghifarit53/tokyonight-vim";
    "christianchiarulli/nvcode-color-schemes.vim"; 
    "rakr/vim-one";
     --"sonph/onehalf";
}






-- deoplete 
vim.g['deoplete#enable_at_startup'] = 1

-- initial settings
vim.api.nvim_command("nnoremap <C-J> <C-W><C-J>")
vim.api.nvim_command("nnoremap <C-K> <C-W><C-K>")
vim.api.nvim_command("nnoremap <C-L> <C-W><C-L>")
vim.api.nvim_command("nnoremap <C-H> <C-W><C-H>")

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth=4
vim.opt.expandtab = true 
vim.opt.smartindent = true

vim.opt.exrc = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.wrap = false 

vim.cmd("set signcolumn=yes")

-- code folding 
vim.opt.foldmethod=indent
vim.opt.foldlevel=99
vim.cmd("nnoremap <space> za")

--tree-sitter
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-- lsp config 
local lsp = require 'lspconfig'
lsp.ccls.setup {}
lsp.pylsp.setup {}

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
    return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})

-- plugin settings 
vim.cmd("colo onedark")
vim.cmd("AirlineTheme onedark")


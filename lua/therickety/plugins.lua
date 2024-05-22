local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins ={

-- debugging
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },

-- lsp

'williamboman/mason.nvim',
'williamboman/mason-lspconfig.nvim',
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
'neovim/nvim-lspconfig',
'hrsh7th/cmp-nvim-lsp',
'hrsh7th/nvim-cmp',

-- visuals

"nvim-treesitter/nvim-treesitter",
"navarasu/onedark.nvim",
{
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
},
{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

-- files

{
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
},
"tpope/vim-fugitive",
{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
},
'ThePrimeagen/harpoon',
{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
},

-- text editing

"mbbill/undotree",
'L3MON4D3/LuaSnip',
"m4xshen/autoclose.nvim",
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
    dependencies = {"rafamadriz/friendly-snippets"} 
}
-- {
--   "folke/which-key.nvim",
--   event = "VeryLazy",
--   init = function()
--     vim.o.timeout = true
--     vim.o.timeoutlen = 300
--   end,
--   opts = {
--     -- your configuration comes here
--     -- or leave it empty to use the default settings
--     -- refer to the configuration section below
--   }
}
local opts = {}

require("lazy").setup(plugins, opts)

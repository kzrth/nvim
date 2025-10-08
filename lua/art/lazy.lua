-- Bootstrap lazy.nvim
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

require("lazy").setup({
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      {'nvim-lua/plenary.nvim'}
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  'ThePrimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'numToStr/Comment.nvim',

  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'mason-org/mason.nvim'},           -- Optional
      {'mason-org/mason-lspconfig.nvim'},           -- Optional

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        dependencies = {'roginfarrer/cmp-css-variables'},
      },                            -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "davidmh/mdx.nvim",
    config = true,
    dependencies = {"nvim-treesitter/nvim-treesitter"}
  },
  {
    {
      'jedrzejboczar/exrc.nvim',
      dependencies = {'neovim/nvim-lspconfig'}, -- (optional)
      config = true,
      opts = { --[[ your config ]] } ,
    },
  },
  {
    'github/copilot.vim'
  }
})

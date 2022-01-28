return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'sheerun/vim-polyglot'
  use 'leafOfTree/vim-svelte-plugin'
  use "projekt0n/github-nvim-theme"
  use 'rose-pine/neovim'

  use 'tpope/vim-unimpaired'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'

  use 'mcchrish/nnn.vim'

  use 'hoob3rt/lualine.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, {'kyazdani42/nvim-web-devicons'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'tpope/vim-surround'

  use 'b3nj5m1n/kommentary'

  use 'svermeulen/vimpeccable'

  use "tversteeg/registers.nvim"

  use 'kyazdani42/nvim-tree.lua' 

  use 'mattn/emmet-vim'

  use 'vimwiki/vimwiki'

  use { 'neoclide/coc.nvim', branch = 'release' }
end)

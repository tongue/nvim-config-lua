return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'sheerun/vim-polyglot'
  use 'folke/tokyonight.nvim'
  use "projekt0n/github-nvim-theme"
  use 'rose-pine/neovim'

  use 'tpope/vim-unimpaired'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'

  use 'mcchrish/nnn.vim'

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, {'kyazdani42/nvim-web-devicons'} }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'tpope/vim-surround'

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require'nvim-ts-autotag'.setup()
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = function()
      require'nvim-autopairs'.setup();
    end
  }

  use 'b3nj5m1n/kommentary'

  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/nvim-lsp-installer',
  }
  use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }

  use { 'ms-jpq/coq_nvim', branch = 'coq' }
  use { 'ms-jpq/coq.thirdparty', branch = '3p' }

  use 'svermeulen/vimpeccable'

  use 'mhartington/formatter.nvim'

  use 'dcampos/nvim-snippy'

  use "tversteeg/registers.nvim"

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  use 'evanleck/vim-svelte'
 
  use 'mattn/emmet-vim'

  use 'vimwiki/vimwiki'
end)

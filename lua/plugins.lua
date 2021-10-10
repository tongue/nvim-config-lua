return require('packer').startup(function()
  use 'sheerun/vim-polyglot'
  use 'folke/tokyonight.nvim'
  use "projekt0n/github-nvim-theme"

  use 'mcchrish/nnn.vim'

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use { 'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons'
    } -- optional for icons
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {}
    end
  }

  use {
    "windwp/nvim-ts-autotag",
    config = function()
      require"nvim-ts-autotag".setup()
    end
  }

  use 'b3nj5m1n/kommentary'

  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'glepnir/lspsaga.nvim'

  use 'svermeulen/vimpeccable'

  use 'lukas-reineke/format.nvim'

  use 'dcampos/nvim-snippy'
  use 'dcampos/compe-snippy'

  use "tversteeg/registers.nvim"

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
end)

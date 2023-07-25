local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') ..
                           '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- theme
  use 'folke/tokyonight.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  -- status bar && icon
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }
  -- use 'ryanoasis/vim-devicons'
  -- document tree
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
  -- nvim + tmux
  use "christoomey/vim-tmux-navigator"
  -- syntax highlight
  use "nvim-treesitter/nvim-treesitter"
  -- rainbow bracket
  use "p00f/nvim-ts-rainbow"

  -- mason lsp
  use {
    "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  -- auto-complete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path"

  use "windwp/nvim-autopairs"

  use "akinsho/bufferline.nvim"
  use "lewis6991/gitsigns.nvim"

  -- auto-cmp icon
  use "onsails/lspkind.nvim"

  -- telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  -- floaterm
  use 'voldikss/vim-floaterm'

  -- indent line
  use "lukas-reineke/indent-blankline.nvim"

  -- start dashboard
  use "glepnir/dashboard-nvim"

  -- markdown plugins
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end
  })

  -- breadcrumb navigation
  use {'fgheng/winbar.nvim'}
  use {"SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig"}

  -- to do highlight
  use "nvim-lua/plenary.nvim"
  use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}

  -- comment / un-comment
  use {
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }

  -- formatter
  use "sbdchd/neoformat"

  -- live server
  use({
    "aurum77/live-server.nvim",
    run = function() require"live_server.util".install() end,
    cmd = {"LiveServer", "LiveServerStart", "LiveServerStop"}
  })

  -- auto save && auto load
  use {
    '0x00-ketsu/autosave.nvim',
    config = function() require('autosave').setup {} end
  }

  use 'djoshea/vim-autoread'

  -- structure overview

  use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
  }

  -- latex
  use {
    'lervag/vimtex',
    opt = true,
    config = function()
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_compiler_latexmk_engines = {_ = '-xelatex'}
      vim.g.tex_comment_nospell = 1
      vim.g.vimtex_compiler_progname = 'nvr'
      vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
      vim.g.vimtex_view_general_options_latexmk = '--unique'
    end,
    ft = 'tex'
  }

  use {
    "iurimateus/luasnip-latex-snippets.nvim",
    -- vimtex isn't required if using treesitter
    requires = {"L3MON4D3/LuaSnip", "lervag/vimtex"},
    config = function()
      require'luasnip-latex-snippets'.setup()
      -- or setup({ use_treesitter = true })
    end
  }

  -- cmake tools
  use 'Civitasv/cmake-tools.nvim' 

  if packer_bootstrap then require('packer').sync() end
end)

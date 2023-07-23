require'nvim-treesitter.configs'.setup {
  -- 添加不同语言:
  ensure_installed = 
    { 
      "vim",
      "bash",
      "c",
      "cpp",
      "javascript",
      "json",
      "lua",
      "python",
      "typescript",
      "tsx",
      "css",
      "rust",
      "markdown",
      "markdown_inline",
      "elm"
    }, -- one of "all" or a list of languages

  highlight = { enable = true },
  indent = { enable = true },

  -- rainbow bracket
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

local g = vim.g

g.neoformat_verbose = 1

-- lua formatter
g.neoformat_enabled_lua = {'luaformat'}
g.neoformat_lua_luaformat = {
  exe = 'lua-format',
  args = {'--indent-width=2'},
  stdin = 1
}

-- clang format
g.neoformat_enabled_cpp = {'clangformat'}
g.neoformat_enabled_c = {'clangformat'}
g.neoformat_cpp_clangformat = {
  exe = 'clang-format',
  args = {'-style=Chromium'},
  stdin = 1
}

local g = vim.g

g.neoformat_verbose = 1

-- lua formatter
g.neoformat_enabled_lua = {'lua-format'}
g.neoformat_lua_luaformat = {
    exe = 'lua-format',
    args = {'--indent-width=2'},
    stdin = 1
}

g.neoformat_enabled_cpp = {'clang-format'}
g.neoformat_cpp_clangformat = {
    exe = 'clang-format',
    args = {'-style=Chromium'},
    stdin = 1
}


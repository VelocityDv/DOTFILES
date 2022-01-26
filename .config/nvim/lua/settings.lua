local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

opt.mouse = 'a'
opt.swapfile = false

opt.number = true
opt.showmatch = true
opt.foldmethod = 'marker'
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 4
opt.smartindent = true

opt.termguicolors = true      -- enable 24-bit RGB colors
cmd [[colorscheme rose-pine]]


opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240


-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

opt.completeopt = 'menuone,noselect'


-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end

-- disable nvim intro
opt.shortmess:append "sI"

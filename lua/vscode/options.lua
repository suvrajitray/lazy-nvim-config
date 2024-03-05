local opt = vim.opt

-- sync with system clipboard
opt.clipboard = "unnamedplus"

-- enable mouse mode
opt.mouse = "a"

-- lines of context
opt.scrolloff = 10

-- insert indents automatically
opt.smartindent = true

-- put new windows below current
opt.splitbelow = true

-- put new windows right of current
opt.splitright = true

opt.undofile = true
opt.undolevels = 10000

-- allow cursor to move where there is no text in visual block mode
opt.virtualedit = "block"

-- search ignoring case
opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
opt.smartcase = true

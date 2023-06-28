local options = {
  backup = false,                          -- creates a backup file
  swapfile = false,                        -- creates a swapfile
  writebackup = false,                     -- if a file is being edited by another program (or was written 
                                           -- to file while editing with another program), it is not allowed 
                                           -- to be edited
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard

  wildmode = 'longest:full,full',          -- Complete longest common string: and shows the vertical menu list 
                                           -- matching commands, then 2nd <TAB> press allows to navigate in the 
                                           -- shown menu list
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  pumheight = 10,                          -- pop up menu height

  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file

  incsearch = true,                        -- While typing a search command, show where the pattern
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again

  mouse = "a",                             -- allow the mouse to be used in neovim

  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  termguicolors = true,                    -- set term gui colors (most terminals support this)

  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  breakindent = true,

  undofile = true,                         -- enable persistent undo

  updatetime = 250,                        -- faster completion (4000ms default)
  timeout = true,
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)

  tabstop = 2,                             -- insert 2 spaces for a tab
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation

  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}

  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 2,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
  backspace = '2',                         -- Make backspace work like most other programs
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                           -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use

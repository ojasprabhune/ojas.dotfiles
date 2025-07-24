-- calls vim API, "g" globals, and mapleader maps key to spacebar
vim.g.mapleader = " "

require("prabhune.lazy_init")
require("prabhune.set")
require("prabhune.remap")

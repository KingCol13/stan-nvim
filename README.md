# Installation

## Requirements

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting
- snippets plugin that uses VS Code style snippets, e.g. [vsnip](https://github.com/hrsh7th/vim-vsnip)

Using vundle:

```vim
Plugin 'KingCol13/stan-nvim'
```

# Tree-sitter configuration

Add to your tree-sitter configuration lua:

```lua
-- Set the treesitter parser for stan filetype
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.stan = {
  install_info = {
    url = "https://github.com/KingCol13/tree-sitter-stan.git",
    files = {"src/parser.c"},
    branch = "dev",
    generate_requires_npm = false,
    requires_generate_from_grammar = false,
  },
}
```

Then run:

```vim
:TSInstall stan
```

# Features

- stan filetype detection
- syntax highlighting, identation, folding using [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- VS Code style snippets

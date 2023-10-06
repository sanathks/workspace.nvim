# workspace.nvim

![License](https://img.shields.io/badge/license-MIT-blue.svg)

workspace.nvim is a Neovim plugin that allows you to manage Tmux sessions for your projects and workspaces in a simple and efficient way.

![workspace.nvim](https://github.com/sanathks/workspace.nvim/assets/4918600/7040f301-941e-4c70-82fa-1dd05955eaf4)

## Introduction 
Inspired by ThePrimeagen's [tmux-sessionizer](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer)

### Features

- Create and manage Tmux sessions for different projects and workspaces.
- Easily switch between Tmux sessions associated with your projects.


## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "sanathks/workspace.nvim",
  dependencies = {"nvim-telescope/telescope.nvim"},
  config = function()
    require("workspace").setup({
      workspaces = {
        { name = "Work",  path = "~/projects/work",  keymap = { "<leader>w" } },
        { name = "Hobby", path = "~/projects/hobby", keymap = { "<leader>p" } },
      }
    })
  end,
}
```

## Switch between tmux sessions 
 
![Open tmux sessions](https://github.com/sanathks/workspace.nvim/assets/4918600/e300869f-0e2c-4eaa-a347-62fbb450ee4e)


```lua
 local workspace = require("workspace")
 vim.keymap.set('n', '<leader>ps', workspace.tmux_sessions)
```

## Contributing
Contributions are welcome! If you find any issues or have ideas for improvements, please open an issue or submit a pull request.


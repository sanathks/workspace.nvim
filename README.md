# Workspace.nvim
Effortlessly manage workspaces using Tmux sessions in Neovim. Simplify workspace navigation and organization with ease

![1003](https://github.com/sanathks/workspace.nvim/assets/4918600/7040f301-941e-4c70-82fa-1dd05955eaf4)

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
  {
    'sanathks/workspace.nvim',
    config = function()
      require("workspace").setup({
          workspaces = {
              wip
          }
      })
    end
  }
```


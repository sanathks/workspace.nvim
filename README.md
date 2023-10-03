# Workspace.nvim
Effortlessly manage workspaces using Tmux sessions in Neovim. Simplify workspace navigation and organization with ease

![1003](https://github.com/sanathks/workspace.nvim/assets/4918600/7040f301-941e-4c70-82fa-1dd05955eaf4)

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


# Workspace.nvim
Effortlessly manage workspaces using Tmux sessions in Neovim. Simplify workspace navigation and organization with ease 

![1003](https://github.com/sanathks/workspace.nvim/assets/4918600/7040f301-941e-4c70-82fa-1dd05955eaf4)

## Introduction 
Inspired by ThePrimeagen's [tmux-sessionizer](https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer)

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

## Open tmux sessions 

![Open tmux sessions](https://github.com/sanathks/workspace.nvim/assets/4918600/e300869f-0e2c-4eaa-a347-62fbb450ee4e)


```lua 
 vim.keymap.set('n', '<leader>ps', workspace.tmux_sessions)
```



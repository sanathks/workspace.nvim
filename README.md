# workspace.nvim

![License](https://img.shields.io/badge/license-MIT-blue.svg)

workspace.nvim is a Neovim plugin that allows you to manage Tmux sessions for your projects and workspaces in a simple and efficient way.

![workspace.nvim](https://github.com/sanathks/workspace.nvim/assets/4918600/9e451b20-7e2c-4577-8ad8-9d09308693f3)


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
 
![tmux sessions](https://github.com/sanathks/workspace.nvim/assets/4918600/961ce94d-943b-4416-b2b0-8a71655da929)


```lua
 local workspace = require("workspace")
 vim.keymap.set('n', '<leader>ps', workspace.tmux_sessions)
```

## Customize the session name generation

with the `tmux_session_name_generator` option you can provide a custom session name generator, which allows you to make the session name unique across multiple workspaces. 

 ```lua
function(project_name, workspace_name)
   local suffix = string.sub(workspace_name, 1, 2)
   local session_name = string.upper(project_name) .. "_" .. suffix
    return session_name
end

```


## Contributing
Contributions are welcome! If you find any issues or have ideas for improvements, please open an issue or submit a pull request.


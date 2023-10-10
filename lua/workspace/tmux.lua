local M = {}

function M.manage_session(project_path, workspace, options)
  local project_name
  if project_path == "newProject" then
    project_name = vim.fn.input("Enter project name: ")
    if project_name and #project_name > 0 then
      project_path = vim.fn.fnamemodify(vim.fn.expand(workspace.path .. "/" .. project_name), ":p")
      os.execute("mkdir -p " .. project_path)
    end
  else
    project_name = project_path:match("./([^/]+)$");
  end

  local session_name = options.tmux_session_name_generator(project_name, workspace.name)

  if session_name == nil then
    session_name = string.upper(project_name)
  end
  session_name = session_name:gsub("[^%w_]", "_")

  local tmux_session_check = os.execute("tmux has-session -t=" .. session_name .. " 2> /dev/null")
  if tmux_session_check ~= 0 then
    os.execute("tmux new-session -ds " .. session_name .. " -c " .. project_path)
  end

  os.execute("tmux switch-client -t " .. session_name)
end

function M.attach(session_name)
  local tmux_session_check = os.execute("tmux has-session -t=" .. session_name .. " 2> /dev/null")
  if tmux_session_check == 0 then
    os.execute("tmux switch-client -t " .. session_name)
  end
end

function M.is_running()
  local tmux_running = os.execute("pgrep tmux > /dev/null")
  local in_tmux = vim.fn.exists('$TMUX') == 1
  if tmux_running == 0 and in_tmux then
    return true
  end
  return false
end

return M

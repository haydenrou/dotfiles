local M = {}

function M.folder_grep()
  local fzf = require("fzf-lua")

  fzf.fzf_exec("find . -type d", {
    prompt = "Folder: ",
    actions = {
      ["default"] = function(selected)
        if selected and #selected > 0 then
          fzf.live_grep({ cwd = selected[1] })
        end
      end,
    },
  })
end

return M

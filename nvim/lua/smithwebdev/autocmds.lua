-- =============================================================================
-- AutoCommands Helper --
-- =============================================================================

local auto = vim.api.nvim_exec
local function set_auto(name, cmds)
  local acmd = 'augroup' .. name .. ' au! '
  for k, _ in pairs(cmds) do
    acmd = acmd .. k .. ' '
  end
  acmd = acmd .. 'augroup END'
  vim.api.nvim_exec(cmds, false)
end
-- =============================================================================

-- Automatically exit from Insert mode
auto(
  [[
    augroup exitInsert
      au CursorHoldI * stopinsert
      au InsertEnter * let updaterestore=&updatetime | set updatetime=10000
      au InsertLeave * let &updatetime=updaterestore
    augroup END
  ]], false
)

-- Saves on text change or exit Insert mode
auto(
  [[
    augroup autosave
        au!
        let blacklist = ['packer', 'NvimTree', 'netrw', 'TelescopePrompt', 'spectre_panel', 'startify']
        au BufEnter * if &filetype == "" | setlocal ft=text | endif
        au TextChanged,InsertLeave * if index(blacklist, &ft) < 0 | silent w | endif
    augroup END
  ]], false
)

-- Help files open to the right of the current buffer
auto(
  [[
    autocmd Filetype help wincmd L
    ]], false
    )

-- Statusline and Tabline Highlights
auto(
  [[
    au ColorScheme * lua require 'smithwebdev.statusline'.set_highlights()
    au ColorScheme * lua require 'smithwebdev.tabline'.set_highlights()
  ]],true
)
-- Statusline Render
auto(
  [[
    au WinEnter * lua require 'smithwebdev.statusline'.setlocal_active_statusline()
    au WinLeave * lua require 'smithwebdev.statusline'.setlocal_inactive_statusline()
  ]], true
)

auto(
  [[
    au Filetype * setlocal tabstop=2
  ]], false
)

-- Autorun PackerCompile when writing to buffer
--auto(
--  [[
--    autocmd BufWritePost smithwebdev.plugins PackerCompile
--  ]],false
--)
--
-- Auto compile when there are changes in plugins.lua
--vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' 





-- Attempts to refactor
--set_auto('exitInsert', { 'au CursorHoldI * stopinsert InsertEnter * let updaterestore=&updatetime | set updatetime=3000 InsertLeave * let &updatetime=updaterestore'})

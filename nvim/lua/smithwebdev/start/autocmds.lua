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
        let blacklist = ['packer', 'NvimTree', 'netrw', 'TelescopePrompt', 'spectre_panel', 'startify', 'snippets']
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

auto(
  [[
    au Filetype * set tabstop=2
  ]], false
)

auto(
  [[
    au Filetype NvimTree set relativenumber
  ]],false
  )

auto(
  [[
    au BufWritePost * UltestNearest
  ]], true
  )


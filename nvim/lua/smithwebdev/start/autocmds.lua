-- =============================================================================
-- AutoCommands Helper --
-- =============================================================================

local auto = vim.api.nvim_exec
--local function set_auto(name, cmds)
--  local acmd = 'augroup' .. name .. ' au! '
--  for k, _ in pairs(cmds) do
--    acmd = acmd .. k .. ' '
--  end
--  acmd = acmd .. 'augroup END'
--  vim.api.nvim_exec(cmds, false)
--end
-- =============================================================================
print('Autocommands connected')
-- Automatically exit from Insert mode
auto(
  [[
    augroup exitInsert
      au CursorHoldI * stopinsert
      au InsertEnter * let updaterestore=&updatetime | set updatetime=2500
      au InsertLeave * let &updatetime=updaterestore
    augroup END
  ]], false
  )

-- Transparent Background
auto(
  [[
    au ColorScheme * hi! Normal guibg=NONE
    au ColorScheme * hi! SignColumn guibg=NONE
    au ColorScheme * hi! LineNr guibg=NONE
    au ColorScheme * hi! CursorLineNr guibg=NONE
  ]], false
  )
-- Remove trailing whitespace on save
auto(
  [[
    autocmd BufWritePre * :%s/\s\+$//e
  ]], false
  )

-- Code Lens support
auto(
  [[
    au CursorHold,CursorHoldI,InsertLeave <buffer> lua vim.lsp.codelens.refresh()
  ]], false
  )

-- Saves on text change or exit Insert mode
auto(
  [[
    augroup autosave
        au!
        let blacklist = ['packer', 'NvimTree', 'netrw', 'TelescopePrompt', 'spectre_panel', 'startify', 'calendar', 'text', 'help', 'Trouble', 'tutor', 'Neoformat', 'lspinfo', 'any-jump', 'tsplayground', 'orgagenda']
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
    au CursorHold, CursorHoldI * lua require'nvim-lightbulb.update_lightbulb()
  ]], false
  )

--auto(
--  [[
--    au BufWritePost * UltestNearest
--  ]], true
--  )

--auto(
--  [[
--    au!
--    au BufWritePre * undojoin | Neoformat
--    ]], false
--  )

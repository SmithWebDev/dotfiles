local telescope = require 'telescope'
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local preview = require('telescope.previewers')
local sorter = require('telescope.sorters')
local snippet = require('telescope')
--local tree = require('telescope.treesitter')
local M = {}

telescope.load_extension('media_files')
snippet.load_extension('ultisnips')
telescope.setup {
  defaults = {
    border = {},
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    buffer_previewer_maker = preview.buffer_previewer_maker,
    color_devicons = true,
    file_previewer = preview.vim_buffer_cat.new,
    file_sorter = sorter.get_fuzzy_file,
    grep_previewer = preview.vim_buffer_vimgrep.new,
    layout_strategy = 'horizontal',
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<CR>"] = actions.select_default + actions.center,
        ["<C-i>"] = actions.select_horizontal,
        ['jj'] = actions.close
      },
      n = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
        ['jj'] = actions.close
      }
    },
    qflist_previewer = preview.vim_buffer_qflist.new,
    selection_strategy = "reset",
    sorting_strategy = "descending",
    use_less = false,
    vimgrep_arguments = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      find_cmd = "rg" -- find command (defaults to `fd`)
    },
    frecency = {
      show_score = false, 
      show_unindexed = true, 
      ignore_patterns = {"*.git/*", "*/tmp/*"}, 
      workspaces = {}, 
    },
    snippet.setup()
  },
  --telescope.extensions.ultisnips.ultisnips{},
}

M.find_files = function()
  builtin.find_files {
    find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
    previewer = false
  }
end

M.find_config_files = function()
  local config_dir = os.getenv('HOME') .. '/.config/nvim'
  builtin.find_files {
    find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden', config_dir },
    previewer = false
  }
end

M.live_grep = function()
  builtin.live_grep {}
end

return M

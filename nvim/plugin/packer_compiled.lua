-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ScrollColors = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/ScrollColors"
  },
  ["animate.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/animate.vim"
  },
  ["any-jump.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/any-jump.vim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["gina.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/gina.vim"
  },
  gloombuddy = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/gloombuddy"
  },
  ["goto-preview"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/goto-preview"
  },
  ["guihua.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/guihua.lua"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  indentline = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/indentline"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lens.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lens.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  mirodark = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/mirodark"
  },
  ["moonlight.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/moonlight.nvim"
  },
  ["navigator.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/navigator.lua"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cheat.sh"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-cheat.sh"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
  },
  ["orgmode.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  seeing_is_believing = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/seeing_is_believing"
  },
  ["shade.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/shade.nvim"
  },
  ["sql.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/sql.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vgit.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vgit.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-haml"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-haml"
  },
  ["vim-pandoc"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-ultest"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-which-key"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ".v:exception | echom "Please check your config for correctness" | echohl None')
end

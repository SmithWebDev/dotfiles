" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
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

time("Luarocks path setup", true)
local package_path_str = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ScrollColors = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/ScrollColors"
  },
  ["TrueZen.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/TrueZen.nvim"
  },
  ["animate.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/animate.vim"
  },
  ["atlantic-dark.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/atlantic-dark.vim"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  ["birds-of-paradise.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/birds-of-paradise.vim"
  },
  ["bracey.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/bracey.vim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["diagnosticls-nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/diagnosticls-nvim"
  },
  ["elrodeo-vim-colorscheme"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/elrodeo-vim-colorscheme"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-worktree.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/git-worktree.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gloombuddy = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/gloombuddy"
  },
  ["hydrangea-vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/hydrangea-vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  indentline = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/indentline"
  },
  ["lens.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lens.vim"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp-trouble.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  mirodark = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/mirodark"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lua-guide"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-lua-guide"
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
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
  },
  ["nvim-yarp"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-yarp"
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
  ["pop-punk.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/pop-punk.vim"
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
  ["tagalong.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/tagalong.vim"
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
  ultisnips = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-colors-lucid"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-colors-lucid"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-dogrun"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-dogrun"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-hug-neovim-rpc"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-hug-neovim-rpc"
  },
  ["vim-hybrid-material"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-hybrid-material"
  },
  ["vim-instant-markdown"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-instant-markdown"
  },
  ["vim-jdaddy"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-jdaddy"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-node"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-node"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rvm"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-rvm"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-signature"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-startify"
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
  },
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-wordmotion"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

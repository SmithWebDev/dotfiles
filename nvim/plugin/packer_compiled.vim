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
local package_path_str = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/smith/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ScrollColors = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/ScrollColors"
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
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  gloombuddy = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/gloombuddy"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["hydrangea-vim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/hydrangea-vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  mirodark = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/mirodark"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-compe"
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
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/packer.nvim"
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
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-colors-lucid"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-colors-lucid"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-dogrun"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-dogrun"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-endwise"
  },
  ["vim-hybrid-material"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-hybrid-material"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-rails"
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
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vscode-ruby"] = {
    loaded = true,
    path = "/home/smith/.local/share/nvim/site/pack/packer/start/vscode-ruby"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

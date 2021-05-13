require 'nvim-treesitter.configs'.setup{
  autopairs = {enable = true},
  autotag = { enable = true},
	ensure_installed = {
	'css',
	'html',
	'javascript',
	'json',
	'lua',
	'python',
	'tsx',
	'typescript',
	'ruby',
	},
	highlight = {
                enable = true,
                additional_vim_regex_highlighting = true
        },
  indent = {enable = true}
}

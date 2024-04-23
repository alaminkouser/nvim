require("tokyonight").setup{
	style = "night",
	on_colors = function(colors)
		colors.bg = "#000000";
	end
}

vim.cmd [[colorscheme tokyonight]]


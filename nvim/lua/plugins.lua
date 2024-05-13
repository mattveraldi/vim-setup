return {
	{
		"neoclide/coc.nvim",
		branch = "release"
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Recommended - see "Configuring" below for more config options
				transparent = false,
				italic_comments = true,
				hide_fillchars = true,
				borderless_telescope = true,
				terminal_colors = false,
			})
			vim.cmd("colorscheme cyberdream") -- set the colorscheme
		end,
	}
}

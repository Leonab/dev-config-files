return {
	{
		-- "bluz71/vim-nightfly-guicolors",
		"EdenEast/nightfox.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local nightfox = require("nightfox")

			nightfox.setup({
				options = {
					transparent = true,
				},
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme nightfox]])
		end,
	},
}

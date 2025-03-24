return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			filesystem = {
				window = {
					position = "right",
				},
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_by_name = {
						-- add extension names you want to explicitly exclude
						-- '.git',
						-- '.DS_Store',
						-- 'thumbs.db',
					},
					never_show = {},
				},
			},
		})

		vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle <CR>", {})
		vim.keymap.set("n", "<leader>ff", "<Cmd>Neotree focus <CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}

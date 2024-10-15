return {
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			return require "configs.telescope"
		end,
	},
	{ 
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = function()
			return require "configs.gruvbox"
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"c",
				"rust",
				"svelte",
				"php",
				"cpp",
				"python",
				"ruby",
				"go",
				"sql",
				"query",
				"markdown",
				"xml",
				"markdown_inline",
				"yaml"
			},
		},
	},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate", "MasonUninstallAll" },
		opts = function()
			return require "configs.mason"
		end,
		config = function(_, opts)
			require("mason").setup(opts)

			vim.api.nvim_create_user_command("MasonInstallAll", function()
				if opts.ensure_installed and #opts.ensure_installed > 0 then
					vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
				end
			end, {})

			vim.g.mason_binaries_list = opts.ensure_installed
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { { "williamboman/mason.nvim" }, { "williamboman/mason-lspconfig.nvim" } },
		config = function()
			return	require("configs.lspconfig")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = { 
			"nvim-tree/nvim-web-devicons",
		},
		opts = function()
			return require "configs.nvimtree"
		end,
		config = function(_, opts)
			require("nvim-tree").setup(opts)
		end,
	},
}

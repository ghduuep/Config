require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"pyright",
		"clangd",
		"clang-format",
	},
})

local lspconfig = require("lspconfig")
local capabilites = require("cmp_nvim_lsp").default_capabilities()

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab"] = cmp.mapping.select_prev_item(),
	}),
	sources = {
		{ name = "nvim_lsp" },
	},
})

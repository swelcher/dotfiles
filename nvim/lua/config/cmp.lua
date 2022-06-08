local cmp = require('cmp')

if not cmp then 
	return
end

local ok, lspkind = pcall(require, "lspkind")
if not ok then
  return
end

lspkind.init()

cmp.setup({
    sources = {
			{ name = "nvim_lua" },
      { name = "luasnip" },
			{ name = "path" },
			{ name = "nvim_lsp" },
			{ name = "buffer", keyword_length = 5 },
    },
    mapping = {
        ["<CR>"] = cmp.mapping.confirm { select = true },
				["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
				["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.abort(),
				["<c-y>"] = cmp.mapping(
				  cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Insert,
          select = true,
				},
				{ "i", "c" }
    ),

    ["<c-space>"] = cmp.mapping {
      i = cmp.mapping.complete(),
      c = function(
        _ --[[fallback]]
      )
        if cmp.visible() then
          if not cmp.confirm { select = true } then
            return
          end
        else
          cmp.complete()
        end
      end,
    },
		["<tab>"] = cmp.config.disable,
	},

    snippet = {
        expand = function(args)
            local luasnip = prequire("snippets.luasnip")
            if not luasnip then
                return
            end
            luasnip.lsp_expand(args.body)
        end,
    },

		formatting = {
			format = lspkind.cmp_format {
				with_text = true,
				menu = {
					buffer = "[buf]",
					nvim_lsp = "[LSP]",
					nvim_lua = "[api]",
					path = "[path]",
					luasnip = "[snip]",
				},
			},
		},
		experimental = {
			native_menu = false,
			ghost_text = false,
		},
	})



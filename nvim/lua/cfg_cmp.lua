local status, cmp = pcall(require, 'cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), 
  }),
	window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    },
  sources = cmp.config.sources(
		{{ name = 'nvim_lua' },},
		{{ name = 'nvim_lsp' },}, 
		{{ name = 'buffer', keyword_length = 4 },}, 
		{{ name = 'path' }}),
})

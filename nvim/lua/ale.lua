vim.g.ale_fixers = {
	css = { 'prettier' },
	html = { 'prettier' },
	lua = { 'luafmt' },
	javascript = {'prettier'},
	json = { 'prettier' },
	python = { 'black', 'isort' },
	ruby = { 'rubocop' },
	yaml = { 'prettier'},
	['*'] = { 'remove_trailing_lines', 'trim_whitespace' }
}

vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 1

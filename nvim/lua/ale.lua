vim.g.ale_fixers = {
	lua = { 'luafmt' },
	json = { 'prettier' },
	python = { 'black' },
	ruby = { 'rubocop' },
	yaml = { 'prettier'},

}

vim.g.ale_fix_on_save = 1

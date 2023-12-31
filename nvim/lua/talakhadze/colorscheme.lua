vim.opt.termguicolors = true -- set by default in rose-pine, but leaving here for clarity

require('rose-pine').setup({
	variant = 'moon',
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,

	groups = {
		background = 'NONE',
		background_nc = '_experimental_nc',
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
	},

	highlight_groups = {
		ColorColumn = { bg = 'NONE' },
		CursorLine = { bg = 'NONE', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
		Search = { bg = 'muted', inherit = false },
	}
})

vim.cmd('colorscheme rose-pine')

local VALID_STYLES = {
	-- a-z
	alpha = true,

	-- 0-9a-z
	alnum = true,

	-- a-z{*}
	al_symb = true,

	-- 0-9a-z{*}
	alnum_symb = true,
}

local DEFAULT_STYLE = "alnum_symb"

local function normalize_style(style)
	-- return default if input is not valid
	if not style then
		return DEFAULT_STYLE
	end

	--return style if input is valid
	if VALID_STYLES[style] then
		return style
	end

	vim.notify(
		string.format("AnimaleseNVIM Invalid style '%s', using default '%s'", style, DEFAULT_STYLE),
		vim.log.levels.WARN
	)
	return DEFAULT_STYLE
end

local M = {}

function M.setup(opts)
	opts = opts or {}

	opts.style = normalize_style(opts.style)

	--TODO: have option to be able to turn on and off
	vim.keymap.set("n", "<Leader>j", function()
		print(opts.style)
	end)
end

return M

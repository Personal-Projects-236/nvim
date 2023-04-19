local M = {}

-- This function activates coq_nvim on file startup

function M.setup()
	local coq = require('coq')
	coq.Now()

	require("coq_3p", {
		{src = "nvimlua", short_name = "nLUA", conf_only = false},
		{src = "bc", short_name = "MATH", precision = 6},
		{src = "cow", trigger = "!cow"},
		{src = "figlet", trigger = "!big"},
		{
			src = "repl",
			sh = "zsh",
			shell = {p = "perl", n = "node"},
			max_lines = 99,
			deadline = 500,
			unsafe = {"rm", "poweroff", "mv"},
		}
	})

end

return M

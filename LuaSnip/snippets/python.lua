local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
	s("main", {
		t({
			"def main():",
			"    ",
			"",
			'if __name__ == "__main__":',
			"    main()",
		}),
	}),
}

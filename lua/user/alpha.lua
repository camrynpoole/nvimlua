local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[____/\\\\\\\\\\\____/\\\\\\\\\\\\\\\__/\\\\\\\\\\\__/\\\\\_____/\\\__/\\\________/\\\_          ]],
	[[___/\\\/////////\\\_\///////\\\/////__\/////\\\///__\/\\\\\\___\/\\\_\/\\\_____/\\\//__         ]],
	[[  __\//\\\______\///________\/\\\___________\/\\\_____\/\\\/\\\__\/\\\_\/\\\__/\\\//_____       ]],
	[[   ___\////\\\_______________\/\\\___________\/\\\_____\/\\\//\\\_\/\\\_\/\\\\\\//\\\_____      ]],
	[[    ______\////\\\____________\/\\\___________\/\\\_____\/\\\\//\\\\/\\\_\/\\\//_\//\\\____     ]],
	[[     _________\////\\\_________\/\\\___________\/\\\_____\/\\\_\//\\\/\\\_\/\\\____\//\\\___    ]],
	[[      __/\\\______\//\\\________\/\\\___________\/\\\_____\/\\\__\//\\\\\\_\/\\\_____\//\\\__   ]],
	[[       _\///\\\\\\\\\\\/_________\/\\\________/\\\\\\\\\\\_\/\\\___\//\\\\\_\/\\\______\//\\\_  ]],
	[[        ___\///////////___________\///________\///////////__\///_____\/////__\///________\///__ ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("c", " " .. " Config", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

local function footer()
	return "chrisatmachine.com"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

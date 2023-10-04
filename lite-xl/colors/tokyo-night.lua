-- Colors from: https://github.com/enkia/tokyo-night-vscode-theme

local style = require "core.style"
local common = require "core.common"

style.background = { common.color "#0A0E10" }
style.background2 = { common.color "#0E181E" }
style.background3 = { common.color "#0A0E10" }
style.text = { common.color "#BDE3ED" }
style.caret = { common.color "#a9b1d6" }
style.accent = { common.color "#7aa2f7" } -- Text in autocomplete and command, col(>80) in satusbar
style.dim = { common.color "#565f89" } -- Text of nonactive tabs, prefix in log
style.divider = { common.color "#101014" }
style.selection = { common.color "#282B3C" }
style.line_number = { common.color "#363B54" }
style.line_number2 = { common.color "#737AA2" } -- Number on line with caret
style.line_highlight = { common.color "#1E202E"}
style.scrollbar = { common.color "#24283b" }
style.scrollbar2 = { common.color "#414868" } -- Hovered

style.syntax["normal"] = { common.color "#BDE3ED" }
style.syntax["symbol"] = { common.color "#c0caf5" }
style.syntax["comment"] = { common.color "#414868" }
style.syntax["keyword"] = { common.color "#ed8796" }  -- local function end, if case
style.syntax["keyword2"] = { common.color "#bb9af7" } -- self, int float
style.syntax["number"] = { common.color "#ed8796" }
style.syntax["literal"] = { common.color "#c0caf5" }
style.syntax["string"] = { common.color "#eed49f" }
style.syntax["operator"] = { common.color "#94e2d5"}  -- = + - / < >
style.syntax["function"] = { common.color "#8aadf4" }

-- PLUGINS
style.linter_warning = { common.color "#e0af68" }     -- linter
style.bracketmatch_color = { common.color "#565f89" } -- bracketmatch
style.guide = { common.color "#1E202E" }
style.guide_highlight = { common.color "#363B54" }              -- indentguide
style.guide_width = 1                                 -- indentguide

-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

local function week_ascii_text()
  return {
    ["Monday"] = {
      "███╗   ███╗ ██████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗",
      "████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ ",
      "██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
      "██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   ",
      "╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Tuesday"] = {
      "████████╗██╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗",
      "╚══██╔══╝██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "   ██║   ██║   ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ",
      "   ██║   ██║   ██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
      "   ██║   ╚██████╔╝███████╗███████║██████╔╝██║  ██║   ██║   ",
      "   ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Wednesday"] = {
      "██╗    ██╗███████╗██████╗ ███╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗",
      "██║    ██║██╔════╝██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "██║ █╗ ██║█████╗  ██║  ██║██╔██╗ ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ ",
      "██║███╗██║██╔══╝  ██║  ██║██║╚██╗██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
      "╚███╔███╔╝███████╗██████╔╝██║ ╚████║███████╗███████║██████╔╝██║  ██║   ██║   ",
      " ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Thursday"] = {
      "████████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗  █████╗ ██╗   ██╗",
      "╚══██╔══╝██║  ██║██║   ██║██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "   ██║   ███████║██║   ██║██████╔╝███████╗██║  ██║███████║ ╚████╔╝ ",
      "   ██║   ██╔══██║██║   ██║██╔══██╗╚════██║██║  ██║██╔══██║  ╚██╔╝  ",
      "   ██║   ██║  ██║╚██████╔╝██║  ██║███████║██████╔╝██║  ██║   ██║   ",
      "   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Friday"] = {
      "███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗",
      "██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝ ",
      "██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
      "██║     ██║  ██║██║██████╔╝██║  ██║   ██║   ",
      "╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Saturday"] = {
      "███████╗ █████╗ ████████╗██╗   ██╗██████╗ ██████╗  █████╗ ██╗   ██╗",
      "██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "███████╗███████║   ██║   ██║   ██║██████╔╝██║  ██║███████║ ╚████╔╝ ",
      "╚════██║██╔══██║   ██║   ██║   ██║██╔══██╗██║  ██║██╔══██║  ╚██╔╝  ",
      "███████║██║  ██║   ██║   ╚██████╔╝██║  ██║██████╔╝██║  ██║   ██║   ",
      "╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
    ["Sunday"] = {
      "███████╗██╗   ██╗███╗   ██╗██████╗  █████╗ ██╗   ██╗",
      "██╔════╝██║   ██║████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝",
      "███████╗██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ ",
      "╚════██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  ",
      "███████║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   ",
      "╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   ",
    },
  }
end

local function week_header()
  local week = week_ascii_text()
  local daysoftheweek = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
  local day = daysoftheweek[os.date("*t").wday]
  local tbl = week[day]
  table.insert(tbl, " " .. os.date "%Y-%m-%d")
  return tbl
end

---@type ChadrcConfig
local M = {
  base46 = {
    theme = "vscode_dark",
    theme_toggle = { "vscode_dark", "one_light" },
  },
  ui = {
    nvdash = {
      load_on_startup = true,

      header = week_header(),

      buttons = {
        { "  Create New Buffer", "Spc b n", "Create New Buffer"},
        { "  Find File", "Spc f f", "Telescope find_files" },
        { "󱋡  Recent Files", "Spc f o", "Telescope oldfiles" },
        { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
        { "  Bookmarks", "Spc m a", "Telescope marks" },
        { "  Edit Nvim Config", "Spc n v", "Edit Neovim config" },
        { "󰌌  Search Keymaps", "Spc f k", "Telescope keymaps"},
      },
    },
  },
}

return M

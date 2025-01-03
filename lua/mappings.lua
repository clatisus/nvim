require "nvchad.mappings"

local wk = require "which-key"

local map = vim.keymap.set
local del = vim.keymap.del

map("n", "<A-a>", "ggVG", { desc = "Select the whole buffer" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- buffers
wk.add {
  { "<leader>b", desc = "+more buffer" },
}
del("n", "<leader>b")
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<leader>ba", function()
  require("nvchad.tabufline").closeAllBufs(true)
end, { desc = "buffer close all" })

map("n", "<leader>bo", function()
  require("nvchad.tabufline").closeAllBufs(false)
end, { desc = "buffer close others" })

map("n", "<leader>bl", function()
  require("nvchad.tabufline").closeBufs_at_direction "left"
end, { desc = "buffer close to left" })

map("n", "<leader>br", function()
  require("nvchad.tabufline").closeBufs_at_direction "right"
end, { desc = "buffer close to right" })

map("n", "<leader>b<", function()
  require("nvchad.tabufline").move_buf(-1)
end, { desc = "buffer move left" })

map("n", "<leader>b>", function()
  require("nvchad.tabufline").move_buf(1)
end, { desc = "buffer move right" })

-- terminals
del({ "n", "t" }, "<A-i>")
del("n", "<leader>h")
del("n", "<leader>v")

map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal new horizontal term" })

map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal new vertical window" })

-- zen mode
map("n", "<leader>zm", "<cmd>ZenMode<CR>", { desc = "Toggle ZenMode" })

-- fns
map("n", "<leader>sc", function()
  require("fns.switchcase").switch_case()
end, { desc = "Switch Case" })

-- adhoc
local function tcd_nearest_git()
  local git_dir = vim.fn.finddir(".git/..", vim.fn.expand "%:p:h" .. ";")
  vim.cmd("tcd" .. " " .. git_dir)
end
map("n", "<leader>cd", tcd_nearest_git, { desc = "change tab directory to the nearest .git" })

del("n", "<leader>n")
map("n", "<leader>nv", function()
  vim.cmd("e" .. " " .. "~/.config/nvim/init.lua")
  tcd_nearest_git()
end, { desc = "edit neovim config" })

map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Telescope keymaps" })

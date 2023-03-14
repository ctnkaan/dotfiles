require("ctnkaan.highlights")
require("ctnkaan.base")
require("ctnkaan.keymaps")
require("ctnkaan.plugins")

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  require('ctnkaan.macos')
end
if is_win then
  require('ctnkaan.windows')
end
if is_wsl then
  require('ctnkaan.wsl')
end

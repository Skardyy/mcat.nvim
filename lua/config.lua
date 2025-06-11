---@class mcat.config
---@field user mcat.config.user
---@field setup function
---@field get_config function

---@class mcat.config.rt

---@type mcat.config
local M = {}

--- @class mcat.config.user
--- @field backend string "auto"|"kitty"|"iterm"|"sixel" terminal graphic protocol to use
--- @field max_width string
--- @field max_height string
--- @field theme string "dark"|"light"|"catppuccin"|"nord"|"monokai"|"dracula"|"gruvbox"|"one_dark"|"solarized"|"tokyo_night"

---@type mcat.config.user
M.user = {
  backend = "auto",
  max_width = "80%",
  max_height = "80%",
  theme = "dark",
}

---@param opts mcat.config.user
---@return mcat.config.user
local function validate_config(opts)
  ---TODO
  return opts
end

---@param opts mcat.config.user
function M.setup(opts)
  local new_opts = validate_config(opts)
  M.user = vim.tbl_deep_extend('force', M.user, new_opts)
end

---@return mcat.config.rt
function M.get_config()
  ---TODO, should lazily get all the info from `mcat --report` and bundle it with the user config to give a concise config struct for all the functions
  return {}
end

return M

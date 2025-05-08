---@class mcat.config
---@field user mcat.config.user
---@field runtime mcat.config.runtime
---@field setup function

---@type mcat.config
local M = {}

--- @class mcat.config.user
--- @field backend string "auto"|"kitty"|"iterm"|"sixel" terminal graphic protocol to use
--- @field style string "light"|"makurai"|"<path/to/style.css>" used for styling html before converting into image
--- @field scripts mcat.user.config.scripts pre made scripts for mcat

--- @class mcat.config.fn
--- @field enabled boolean disable / enable the script
--- @field max_width? string max width of image in logic unit, e.g 80%, 20c, 300px, 300
--- @field max_height? string max height of image in logic unit, e.g 80%, 20c, 300px, 300
--- @field image? boolean adds to the exts all supported image exts
--- @field video? boolean adds to the exts all supported video exts
--- @field document? boolean adds to the exts all supported document exts
--- @field url? boolean queries url for supported media
--- @field exts? [string] the exts the function will accept

--- @class mcat.user.config.scripts
--- @field oil_preview mcat.config.fn settigns for oil_preview script
--- @field on_buffer_open mcat.config.fn settings for on_buffer_open script
--- @field under_cursor mcat.config.fn settings for under_cursor script

--- all should be lazy evalulated, and be displayed on the checkhealth.
--- @class mcat.config.runtime
--- @field kitty? boolean is kitty supported on here?
--- @field iterm? boolean is iterm supported on here?
--- @field sixel? boolean is sixel supported on here?
--- @field version? boolean what is the version of mcat here?
--- @field ffmpeg? boolean do we have ffmpeg here?
--- @field chromium? boolean do we have chromium here?
--- @field window_pixels? string what is the size of the window in pixels?
--- @field window_cells? string what is the size of the window in cells?

---@type mcat.config.fn
local default_fn_config = {
  enabled = false,
}


---@type mcat.config.user
M.user = {
  backend = "auto",
  max_width = "80%",
  max_height = "80%",
  style = "makurai",
  scripts = {
    oil_preview = default_fn_config,
    on_buffer_open = default_fn_config,
    under_cursor = default_fn_config
  }
}

---@param opts mcat.config.user
local function validate_config(opts)
  ---TODO
  return opts
end

---@param opts mcat.config.user
function M.setup(opts)
  local new_opts = validate_config(opts)
  M.user = vim.tbl_deep_extend('force', M.user, new_opts)
end

return M

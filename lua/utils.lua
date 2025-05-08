local M = {}


local function clean_after_image(winid)
  ---TODO, may require bufid instead
end

local function settings_for_window(winid)
  ---TODO, should return both modified sizes and offset for center.
end

---@param img string
---@param opts mcat.config.fn
function M.draw_relative_to_cursor(img, opts)
  ---TODO draw img on a relative window to the cursor
end

---@param img string
---@param opts mcat.config.fn
function M.draw_on_window(img, opts)
  ---TODO draw img on a certain window
end

---@param img string
---@param opts mcat.config.fn
---@param x integer
---@param y integer
---@param center boolean
---@param scale number
function M.draw_at(img, opts, x, y, center, scale)
  ---TODO draw img at a given place
end

return M

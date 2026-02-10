local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = math.floor(gwidth * 0.8)
local height = math.floor(gheight * 0.8)
local buf
local win
local open_todo_float = function()
  buf = vim.api.nvim_create_buf(false, true)
  win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = math.floor((gheight - height) / 2),
    col = math.floor((gwidth - width) / 2),
    style = "minimal",
    border = "rounded",
  })
  vim.cmd.edit("~/COSAS/toDO/toDO.md")

  local close_fn = function()
    vim.cmd("w")
    vim.api.nvim_win_close(win, true)
    vim.api.nvim_buf_delete(buf, { force = true })
  end

  vim.keymap.set("n", "<leader>o", close_fn, { buffer = buf })
end

vim.keymap.set("n", "<leader>o", open_todo_float, { desc = "Toggle TODO list" })

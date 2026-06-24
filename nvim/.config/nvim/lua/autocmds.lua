require "nvchad.autocmds"

vim.opt.autoread = true

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI" }, {
  callback = function()
    if vim.fn.getbufvar("%", "&modified") == 0 then
      vim.cmd "checktime"
    end
  end,
})

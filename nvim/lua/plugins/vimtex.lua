return {
  "lervag/vimtex",
  lazy = false, -- VimTeX recommends not lazy-loading for full functionality
  init = function()
    -- VimTeX configuration usually goes in 'init' because it relies on global variables
    vim.g.vimtex_view_method = "zathura"
  end,
  config = function()
    -- This sets the conceal level specifically when entering a TeX buffer
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "tex",
      callback = function()
        vim.opt_local.conceallevel = 0
      end,
    })
  end,
}

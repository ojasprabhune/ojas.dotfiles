return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      options = {
        multilines = {
          enabled = true,
          always_show = true,
        },
        overflow = {
          mode = "wrap",
        },
        show_all_diags_on_cursorline = true,
      }
    })
  end
}

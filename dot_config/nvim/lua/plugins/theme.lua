return {
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_diagnostic_line_highlight = true
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

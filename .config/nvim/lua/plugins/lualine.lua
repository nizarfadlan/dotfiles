return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.options, {
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    })

    opts.sections.lualine_a = { { "mode", icon = "" } }
    opts.sections.lualine_y = { { "progress", icon = "", separator = " ", padding = { left = 1, right = 1 } } }
    opts.sections.lualine_z = { { "location", icon = "", padding = { left = 1 } } }
    opts.extensions = {
      "lazy",
      "man",
      "mason",
      "nvim-dap-ui",
      "overseer",
      "quickfix",
      "toggleterm",
      "trouble",
      "neo-tree",
      "symbols-outline",
    }
  end,
  keys = {
    {
      "<leader>uS",
      function()
        if vim.opt.laststatus:get() == 0 then
          vim.opt.laststatus = 3
        else
          vim.opt.laststatus = 0
        end
      end,
      desc = "Toggle Statusline",
    },
  },
}

return {
  -- yamlls med Jinja-venlige custom tags
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              customTags = {
                "!Ref",
                "!Sub",
                "!include scalar",
              },
              keyOrdering = false,
            },
          },
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "yaml", "jinja", "jinja_inline" })
    end,
  },
}

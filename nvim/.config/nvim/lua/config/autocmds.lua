-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.md",
  callback = function(args)
    local lines = vim.api.nvim_buf_get_lines(args.buf, 0, -1, false)
    local in_frontmatter = false

    for i, line in ipairs(lines) do
      if line:match("^%-%-%-$") then
        if not in_frontmatter then
          in_frontmatter = true
        else
          break
        end
      elseif in_frontmatter and line:match("^changed:%s") then
        local new_line = "changed: " .. os.date("%y.%m.%d")
        vim.api.nvim_buf_set_lines(args.buf, i - 1, i, false, { new_line })
        return
      end
    end
  end,
})

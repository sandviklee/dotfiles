return {
  "ej-shafran/compile-mode.nvim",
  version = "^5.0.0",
  -- you can just use the latest version:
  -- branch = "latest",
  -- or the most up-to-date updates:
  -- branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- if you want to enable coloring of ANSI escape codes in
    -- compilation output, add:
    -- { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  config = function()
    ---@module "compile-mode"
    ---@type CompileModeOpts
    vim.g.compile_mode = {
      default_command = {
        python = "python " .. vim.fn.expand("%"),
        lua = "lua " .. vim.fn.expand("%"),
        javascript = "bun " .. vim.fn.expand("%"),
        typescript = "bun " .. vim.fn.expand("%"),
        c = "make",
        cpp = "make",
        go = "go run " .. vim.fn.expand("%"),
        zig = "zig run " .. vim.fn.expand("%"),
      },
      auto_jump_to_first_error = true,
    }

    vim.keymap.set("n", "<C-c>", vim.cmd.Compile, { desc = "Compile code" })
    vim.keymap.set("n", "<C-r>", vim.cmd.Recompile, { desc = "Recompile code" })
  end,
}

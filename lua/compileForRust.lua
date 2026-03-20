vim.api.nvim_create_user_command('RustBuild', function()
  local fileName = vim.fn.expand '%'
  -- Remove the file extension as the binary name
  local bin = vim.fn.expand '%:r'
  vim.cmd(string.format("botright 10split | terminal bash -c 'rustc %s && ./%s; exec bash'", fileName, bin))
end, {})

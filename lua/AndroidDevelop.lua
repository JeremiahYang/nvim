vim.api.nvim_create_user_command('GradleInstall', function()
  vim.cmd 'botright 12split | terminal ./gradlew installDebug'
end, {})

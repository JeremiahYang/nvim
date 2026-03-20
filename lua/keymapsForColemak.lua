-- Colemak 方向键映射（将 hjkl → unei）
-- 直观示意（u=上 / n=左 / e=下 / i=右）：
--      ┌───┐
--      │ u │   ↑ (k)
--  ┌───┼───┼───┐
--  │ n │ e │ i │ ←(h)  ↓(j)  →(l)
--  └───┴───┴───┘
-- 对应关系：
--   u → k  （上）
--   n → h  （左）
--   e → j  （下）
--   i → l  （右）
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'u', 'k', { noremap = true }, { desc = 'up' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'U', 'K', { noremap = true }, { desc = 'up' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'n', 'h', { noremap = true }, { desc = 'left' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'N', 'H', { noremap = true }, { desc = 'left' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'e', 'j', { noremap = true }, { desc = 'down' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'E', 'J', { noremap = true }, { desc = 'down' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'i', 'l', { noremap = true }, { desc = 'right' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'I', 'L', { noremap = true }, { desc = 'right' })

-- find n→k
-- The key K is now in the position where the key N was originally
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'k', 'n', { noremap = true }, { desc = 'Colemak 方向：上 (h→i)' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'K', 'N', { noremap = true }, { desc = 'Colemak 方向：上 (h→i)' })
-- insert key
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'h', 'i', { noremap = true }, { desc = 'Colemak 方向：上 (h→i)' })
vim.keymap.set({ 'n', 'v', 'x', 'o' }, 'H', 'I', { noremap = true }, { desc = 'Colemak 方向：上 (H→I)' })
-- undo u->l
-- The key l is now in the position where the key u was originally
vim.keymap.set({ 'n', 'v', 'x' }, 'l', 'u', { noremap = true }, { desc = 'Colemak 方向：上 (u→l)' })
vim.keymap.set({ 'n', 'v', 'x' }, 'L', 'U', { noremap = true }, { desc = 'Colemak 方向：上 (U→L)' })

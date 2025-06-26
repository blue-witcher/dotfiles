-- diffs (intented for lewis6991/gitsigns.nvim
local DiffAddHl     = {'DiffAdd', 'GitSignsAdd'}
local DiffChangeHl  = {'DiffChange', 'GitSignsChange'}
local DiffDeleteHl  = {'DiffDelete', 'GitSignsDelete'}

for i, DiffAddHighlights in ipairs(DiffAddHl) do
    vim.cmd('highlight ' .. DiffAddHighlights .. ' guifg=#40a02b')
end

for i, DiffChangeHighlights in ipairs(DiffChangeHl) do
    vim.cmd('highlight ' .. DiffChangeHighlights .. ' guifg=#df8e1d')
end

for i, DiffDeleteHighlights in ipairs(DiffDeleteHl) do
    vim.cmd('highlight ' .. DiffDeleteHighlights .. ' guifg=#d20f39')
end

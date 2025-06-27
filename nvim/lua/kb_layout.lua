-- cursor remappings

local kb_layout = os.getenv('kb_layout')

if kb_layout == 'colemak-dh' then
    -- cursor
    vim.keymap.set({'n', 'v'}, 'n', '<left>')
    vim.keymap.set({'n', 'v'}, 'N', 'H')
    vim.keymap.set({'n', 'v'}, 'e', '<down>')
    vim.keymap.set({'n', 'v'}, 'E', 'J')
    vim.keymap.set({'n', 'v'}, 'i', '<up>')
    vim.keymap.set({'n', 'v'}, 'I', 'K')
    vim.keymap.set({'n', 'v'}, 'o', '<right>')
    vim.keymap.set({'n', 'v'}, 'O', 'L')
    vim.keymap.set({'n', 'v'}, 'j', 'n')
    vim.keymap.set({'n', 'v'}, 'J', 'N')
    vim.keymap.set({'n', 'v'}, 'h', 'e')
    vim.keymap.set({'n', 'v'}, 'H', 'E')
    vim.keymap.set({'n', 'v'}, 'l', 'i')
    vim.keymap.set({'n', 'v'}, 'L', 'I')
    vim.keymap.set({'n', 'v'}, 'k', 'o')
    vim.keymap.set({'n', 'v'}, 'K', 'O')

    vim.keymap.set({'n', 'v'}, ';', ':')
    vim.keymap.set({'n', 'v'}, '<C-/>', 'gcc', { remap = true })
elseif kb_layout == 'qwertz' then
    vim.keymap.set({'n', 'v'}, '.', ':')
    vim.keymap.set({'n', 'v'}, '<C-->', 'gcc', { remap = true })
elseif kb_layout == 'qwerty' or kb_layout == nil then
    vim.keymap.set({'n', 'v'}, ';', ':')
    vim.keymap.set({'n', 'v'}, '<C-/>', 'gcc', { remap = true })
end

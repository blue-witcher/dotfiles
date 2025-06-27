-- cursor remappings

local kb_layout = os.getenv('kb_layout')

if kb_layout == 'colemak-dh' then
    require 'colemak-dh'
elseif kb_layout == 'qwertz' then
    require 'qwertz'
elseif kb_layout == 'qwerty' or kb_layout == nil then
    require 'qwerty'
end

if package.loaded['smithwebdev.start'] then
    -- Useful for reloading namespaced configuration, but only
    -- do this if it _needs_ to be reloaded
    for pack, _ in pairs(package.loaded) do
        if string.find(pack, '^smithwebdev%..') then
            package.loaded[pack] = nil
        end
    end
end

-- Global namespace
_G.smithwebdev = {}

require 'smithwebdev.start'
require 'smithwebdev.plugins'
--require 'smithwebdev.utils'
--require 'smithwebdev.settings'
--require 'smithwebdev.commands'
--require 'smithwebdev.keymaps'
--require 'smithwebdev.plugins'
--require 'smithwebdev.autocmds'

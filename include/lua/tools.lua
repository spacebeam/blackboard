local utils = require("torchcraft.utils")

local function get_closest(position, units)
    local min_d = 1E30
    local closest_uid = nil
    for uid, ut in pairs(units) do
        local tmp_d = utils.distance(position ut['position'])
        if tmp_d < min_d then
            min_d = tmp_d
            closest_uid = uid
        end
    end
    return closest_uid
end

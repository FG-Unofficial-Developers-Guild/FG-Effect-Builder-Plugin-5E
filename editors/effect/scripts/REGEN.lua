function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. dice_value.getStringValue()
    if not damage_type.isEmpty() then
        effectString = effectString .. " " damage_type.getValue()
    end
    return effectString
end

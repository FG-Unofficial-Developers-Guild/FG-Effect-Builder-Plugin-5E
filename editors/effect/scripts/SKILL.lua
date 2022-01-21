function createEffectString()
    local effectString = parentcontrol.window.effect.getStringValue() .. ": " .. StringManager.convertDiceToString(effect_dice.getDice(), effect_modifier.getValue())
    local descriptors = {}
    if not skill.isEmpty() then
        table.insert(descriptors, skill.getValue())
    end
    if not ability.isEmpty() then
        table.insert(descriptors, ability.getValue())
    end

    if next(descriptors) then
        effectString = effectString .. " " .. table.concat(descriptors, ",")
    end

    return effectString
end

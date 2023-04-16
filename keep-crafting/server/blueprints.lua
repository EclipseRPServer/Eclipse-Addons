local Blueprints = {
    ['appistol'] = {
        item_settings = {
            label = 'AP Pistol',
            image = 'weapon_appistol', -- use inventory's images
            object = {
                name = 'w_pi_appistol',
                rotation = vector3(45.0, 0.0, 0.0)
            },
            level = 0,
            hide_until_reaches_level = true,
            job = {
                allowed_list = {},
                allowed_grades = {}
            }
        },
        crafting = {
            success_rate = 100,
            amount = 1, -- crafted amount
            duration = 30,
            materials = {
                ["steel"] = 100,
                ["aluminum"] = 25,
                ['plastic'] = 10,
                ["rubber"] = 18,
            },
            exp_per_craft = 15
        }
    },
    ['microsmg'] = {
        item_settings = {
            label = 'Micro SMG',
            image = 'weapon_microsmg', -- use inventory's images
            object = {
                name = 'w_sb_microsmg',
                rotation = vector3(45.0, 0.0, 0.0)
            },
            level = 0,
            job = {
                allowed_list = {},
                allowed_grades = {}
            }
        },
        crafting = {
            success_rate = 100,
            amount = 1, -- crafted amount
            duration = 60,
            materials = {
                ["steel"] = 200,
                ["aluminum"] = 45,
                ['plastic'] = 20,
                ["rubber"] = 30,
            },
            exp_per_craft = 30
        }
    },
}

-- DO NOT TOUCH CODE BELLOW IF YOU DON"T KNOW WHAT YOU'RE DOING

function IsBlueprint(item_name)
    if Blueprints[item_name] then
        return true
    else
        return false
    end
end

function GetBlueprint(item_name)
    if Blueprints[item_name] then
        return Blueprints[item_name]
    else
        return false
    end
end

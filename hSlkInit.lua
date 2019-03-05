hslk_global = {

    dzapi_map_level_award = {},
    item_moment = {},
    item_cooldown = {},
    env_model = {},

    ability_item_separate = 0,
    ability_break = 0,
    ability_swim_unlimit = 0,
    ability_hero_tavern_selection = 0,

    unit_token = 0,
    unit_hero_tavern = 0, -- 酒馆id
    unit_hero_tavern_token = 0, -- 酒馆选择马甲id（视野）
    unit_hero_death_token = 0,

    heroesLen = 0,
    heroes = {},
    heroesKV = {},
    unitsKV = {},

    attr = {
        agi = {
            add = {},
            sub = {},
        },
        int = {
            add = {},
            sub = {},
        },
        str = {
            add = {},
            sub = {},
        },
        attack_green = {
            add = {},
            sub = {},
        },
        attack_white = {
            add = {},
            sub = {},
        },
        item_attack_white = {
            add = {},
            sub = {},
        },
        attack_speed = {
            add = {},
            sub = {},
        },
        defend = {
            add = {},
            sub = {},
        },
        life = {
            add = {},
            sub = {},
        },
        mana = {
            add = {},
            sub = {},
        },
        avoid = {
            add = 0,
            sub = 0,
        },
        sight = {
            add = {},
            sub = {},
        },
    },

}

--ability_item_separate
hslk_global.ability_item_separate = cj.LoadInteger(cg.hash_hslk, cj.StringHash("ability_item_separate"), 0)
--ability_break
hslk_global.ability_break = cj.LoadInteger(cg.hash_hslk, cj.StringHash("ability_break"), 0)
--ability_swim_unlimit
hslk_global.ability_swim_unlimit = cj.LoadInteger(cg.hash_hslk, cj.StringHash("ability_swim_unlimit"), 0)
--ability_hero_tavern_selection
hslk_global.ability_hero_tavern_selection = cj.LoadInteger(cg.hash_hslk, cj.StringHash("ability_hero_tavern_selection"), 0)

--unit_token
hslk_global.unit_token = cj.LoadInteger(cg.hash_hslk, cj.StringHash("unit_token"), 1)
--unit_hero_tavern
hslk_global.unit_hero_tavern = cj.LoadInteger(cg.hash_hslk, cj.StringHash("unit_hero_tavern"), 2)
--unit_hero_tavern_token
hslk_global.unit_hero_tavern_token = cj.LoadInteger(cg.hash_hslk, cj.StringHash("unit_hero_tavern_token"), 3)
--unit_hero_death_token
hslk_global.unit_hero_death_token = cj.LoadInteger(cg.hash_hslk, cj.StringHash("unit_hero_death_token"), 4)

--地图等级奖励
local qty = cj.LoadInteger(cg.hash_hslk, cj.StringHash("dzapi_map_level_award"), cj.StringHash("max_qty"))
for i = 1, qty do
    table.insert(hslk_global.dzapi_map_level_award, cj.LoadInteger(cg.hash_hslk, cj.StringHash("dzapi_map_level_award"), i))
end

--瞬逝物系统
qty = cj.LoadInteger(cg.hash_hslk, cj.StringHash("item_moment"), -1) - 1
for i = 1, qty do
    table.insert(hslk_global.item_moment, cj.LoadInteger(cg.hash_hslk, cj.StringHash("item_moment"), i))
end
--空冷却
qty = cj.LoadInteger(cg.hash_hslk, cj.StringHash("item_cooldown"), -1) - 1
for i = 0, qty do
    hslk_global.item_cooldown[i] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("item_cooldown"), i)
    hslk_global.item_cooldown[i] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("item_cooldown"), i)
end

--环境系统
qty = cj.LoadInteger(cg.hash_hslk, cj.StringHash("env_model_key"), -1) - 1
for i = 1, qty do
    local key = cj.LoadStr(cg.hash_hslk, cj.StringHash("env_model_key"), i)
    hslk_global.env_model[key] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("env_model"), cj.StringHash(key))
end

--属性系统
for i = 1, 9 do
    local val = math.floor(10^(i-1))
    hslk_global.attr.agi.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_agi_add"), val)
    hslk_global.attr.agi.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_agi_sub"), val)
    hslk_global.attr.int.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_int_add"), val)
    hslk_global.attr.int.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_int_sub"), val)
    hslk_global.attr.str.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_str_add"), val)
    hslk_global.attr.str.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_str_sub"), val)
    hslk_global.attr.attack_green.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_green_add"), val)
    hslk_global.attr.attack_green.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_green_sub"), val)
    hslk_global.attr.attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_white_add"), val)
    hslk_global.attr.attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_white_sub"), val)
    hslk_global.attr.item_attack_white.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_item_attack_white_add"), val)
    hslk_global.attr.item_attack_white.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_item_attack_white_sub"), val)
    hslk_global.attr.attack_speed.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_speed_add"), val)
    hslk_global.attr.attack_speed.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_attack_speed_sub"), val)
    hslk_global.attr.defend.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_defend_add"), val)
    hslk_global.attr.defend.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_defend_sub"), val)
    hslk_global.attr.life.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_life_add"), val)
    hslk_global.attr.life.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_life_sub"), val)
    hslk_global.attr.mana.add[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_mana_add"), val)
    hslk_global.attr.mana.sub[val] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_mana_sub"), val)
end
--属性系统 回避
hslk_global.attr.avoid.add = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_avoid_add"), val)
hslk_global.attr.avoid.sub = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_avoid_sub"), val)
--属性系统 视野
local sightArr = {50, 100, 200, 300, 400, 1000}
for k, v in ipairs(sightArr) do
    hslk_global.attr.sight.add[v] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_sight_add"), v)
    hslk_global.attr.sight.sub[v] = cj.LoadInteger(cg.hash_hslk, cj.StringHash("attr_sight_sub"), v)
end

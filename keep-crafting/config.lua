Config = Config or {}

Config.menu = 'keep-menu' -- qb-menu (recommended) / qb-menu

Config.model_loading = {
     timeout = 1500, --ms
     dealy = 50, --ms
}

Config.MagicTouch = false

Config.categories = {
     ['misc'] = {
          key = 'misc',
          label = 'Misc',
          icon = 'fa-solid fa-tags',
          jobs = {},
     },
     ['weapons'] = {
          key = 'weapons',
          label = 'Weapons',
          icon = 'fa-solid fa-gun',
          jobs = {},
          sub_categories = {
               ['tools'] = {
                    label = 'Tools',
               },
               ['pistol'] = {
                    label = 'Pistol',
               },
               ['smg'] = {
                    label = 'SMG',
               },
               ['ar'] = {
                label = 'AR',
               },
               ['attch'] = {
                    label = 'Attchments',
               },
          }
     },
     ['medical'] = {
          key = 'medical',
          label = 'Medical',
          icon = 'fa-solid fa-hand-holding-medical',
          jobs = {}
     },
     ['blueprints'] = {
          key = 'blueprints',
          label = 'Blueprints Craft',
          icon = 'fa-solid fa-file',
          jobs = {}
     },
}

Config.permanent_items = {
     'wrench'
}

local misc_recipe = {
     ['gatecrack'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Gate Crack Kit',
               object = {
                    name = 'ch_prop_ch_usb_drive01x', -- <-- this model can fail to load
                    rotation = vector3(45.0, 0.0, -45.0)
               },
               image = 'gatecrack', -- use inventory's images
               level = 40,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 40,
               materials = {
                    ["metalscrap"] = 10,
                    ["plastic"] = 50,
                    ["aluminum"] = 30,
                    ["iron"] = 17,
                    ["electronickit"] = 2,
               },
               exp_per_craft = 20
          }
     },
     ['repairkit'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Repair kit',
               object = {
                    name = 'prop_tool_box_04', -- <-- this model can fail to load
                    rotation = vector3(45.0, 0.0, -45.0)
               },
               image = 'repairkit', -- use inventory's images
               level = 40,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 5, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 20,
                    ["steel"] = 25,
               },
               exp_per_craft = 20
          }
     },
     ['electronickit'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Electronickit',
               image = 'electronickit', -- use inventory's images
               -- object = {
               --      name = 'v_serv_radio',
               --      rotation = vector3(0.0, 0.0, 0.0)
               -- },
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
                    ["steel"] = 25,
                    ["plastic"] = 25,
               },
               exp_per_craft = 5
          }
     },
     ['radio'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Radio',
               image = 'radio', -- use inventory's images
               object = {
                    name = 'v_serv_radio',
                    rotation = vector3(0.0, 0.0, 0.0)
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
                    ["electronickit"] = 1,
                    ["steel"] = 25,
                    ["plastic"] = 25,
               },
               exp_per_craft = 5
          }
     },
     ['lockpick'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Lockpick',
               image = 'lockpick', -- use inventory's images
               object = {
                    name = 'prop_tool_screwdvr01',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 20, -- crafted amount
               duration = 20,
               materials = {
                    ["steel"] = 20,
                    ["rubber"] = 20,
               },
               exp_per_craft = 5
          }
     },
     ['head_bag'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Head Bad',
               image = 'head_bag', -- use inventory's images
               object = {
                    name = 'prop_cs_rub_binbag_01',
                    rotation = vector3(0.0, 180.0, 0.0)
               },
               level = 150,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ["cloth"] = 40,
               },
               exp_per_craft = 5
          }
     },
     ['ironoxide'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Ironoxide',
               image = 'ironoxide', -- use inventory's images
               object = {
                    name = 'v_med_cor_chemical',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 300,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 5, -- crafted amount
               duration = 30,
               materials = {
                    ["iron"] = 60,
                    ["glass"] = 30,
               },
               exp_per_craft = 15
          }
     },
     ['aluminumoxide'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Aluminumoxide',
               image = 'aluminumoxide', -- use inventory's images
               object = {
                    name = 'v_med_cor_chemical',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 300,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 5, -- crafted amount
               duration = 30,
               materials = {
                    ["aluminum"] = 60,
                    ["glass"] = 30,
               },
               exp_per_craft = 15
          }
     },
     ['armor'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Armor',
               image = 'armor', -- use inventory's images
               -- object = {
               --      name = 'v_med_cor_chemical',
               --      rotation = vector3(0.0, 0.0, 0.0)
               -- },
               level = 300,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["iron"] = 33,
                    ["steel"] = 44,
                    ["plastic"] = 55,
                    ["aluminum"] = 22,
               },
               exp_per_craft = 15
          }
     },
     ['drill'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Drill',
               image = 'drill', -- use inventory's images
               object = {
                    name = 'hei_prop_heist_drill',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 300,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },

          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["iron"] = 50,
                    ["steel"] = 50,
                    ["screwdriverset"] = 3,
                    ["advancedlockpick"] = 2,
               },
               exp_per_craft = 50
          }
     },
}

local medial = {
     ['bandage'] = {
          categories = {
               main = 'medical',
          },
          item_settings = {
               label = 'Bandage',
               image = 'bandage', -- use inventory's images
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
               -- gang = {
               --      allowed_list = {},
               --      allowed_grades = {}
               -- }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 3,
               materials = {
                    ["plastic"] = 2,
               },
               exp_per_craft = 5
          }
     },
     ['firstaidkit'] = {
          categories = {
               main = 'medical',
          },
          item_settings = {
               label = 'Firstaid',
               image = 'firstaidkit', -- use inventory's images
               object = {
                    name = 'v_ret_ta_firstaid',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 0,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
               -- gang = {
               --      allowed_list = {},
               --      allowed_grades = {}
               -- }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 10,
               materials = {
                    ["plastic"] = 15,
                    ["rubber"] = 5,
               },
               exp_per_craft = 10
          }
     },
}

local weapons_recipe = {
     ['cuffkey'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Handcuff Key',
               image = 'cuffkey', -- use inventory's images
               object = {
                    name = 'bkr_prop_jailer_keys_01a',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 50,
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
               },
               exp_per_craft = 5
          }
     },
     ['pistol_ammo'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Pistol Ammo',
               image = 'pistol_ammo', -- use inventory's images
               object = {
                    name = 'prop_ld_ammo_pack_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 150,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 10, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 50,
               },
               exp_per_craft = 10
          }
     },
     ['rifle_ammo'] = {
        categories = {
             sub = 'ar',
        },
        item_settings = {
             label = 'Rifle Ammo',
             image = 'rifle_ammo', -- use inventory's images
             object = {
                  name = 'prop_ld_ammo_pack_01',
                  rotation = vector3(250.0, 0.0, 0.0)
             },
             level = 200,
             job = {
                  allowed_list = {},
                  allowed_grades = {}
             }
        },
        crafting = {
             success_rate = 100,
             amount = 15, -- crafted amount
             duration = 30,
             materials = {
                  ["steel"] = 75,
             },
             exp_per_craft = 15
        }
   },
     ['weapon_pistol50'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Desert Eagle',
               image = 'weapon_pistol50', -- use inventory's images
               object = {
                    name = 'w_pi_pistol50',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 150,
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
                    ["aluminum"] = 170,
                    ["steel"] = 150,
                    ["rubber"] = 50,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['weapon_heavypistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Heavy Pistol',
               image = 'weapon_heavypistol', -- use inventory's images
               object = {
                    name = 'w_pi_heavypistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 100,
               hide_until_reaches_level = false,
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
                    ["aluminum"] = 130,
                    ["steel"] = 120,
                    ["rubber"] = 70,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['weapon_pistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'P250',
               image = 'weapon_pistol', -- use inventory's images
               object = {
                    name = 'w_pi_pistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 50,
               hide_until_reaches_level = false,
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
                    ["aluminum"] = 130,
                    ["steel"] = 120,
                    ["rubber"] = 70,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['weapon_appistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'AP Pistol',
               image = 'weapon_appistol', -- use inventory's images
               object = {
                    name = 'w_pi_appistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 100,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 200,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 130,
                    ["steel"] = 120,
                    ["rubber"] = 70,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['pistol_suppressor'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Pistol Suppressor',
               image = 'pistol_suppressor', -- use inventory's images
               object = {
                    name = 'w_at_pi_supp_2',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 150,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["rubber"] = 30,
               },
               exp_per_craft = 25
          }
     },
     ['pistol50_extendedclip'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Desert Eagle Extendedclip',
               image = 'pistol_extendedclip', -- use inventory's images
               object = {
                    name = 'w_pi_pistol50_mag2',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 150,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["plastic"] = 10,
               },
               exp_per_craft = 25
          }
     },
     ['appistol_extendedclip'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'AP Pistol Extendedclip',
               image = 'pistol_extendedclip', -- use inventory's images
               object = {
                    name = 'w_pi_appistol_mag2',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 250,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["plastic"] = 10,
               },
               exp_per_craft = 25
          }
     },
     ['microsmg_extendedclip'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Micro SMG Extendedclip',
               image = 'pistol_extendedclip', -- use inventory's images
               object = {
                    name = 'w_sb_microsmg_mag2',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 200,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['machinepistol_drum'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Tec 9 Extendedclip',
               image = 'rifle_drummag', -- use inventory's images
               object = {
                    name = 'w_sb_compactsmg_boxmag',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 200,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 110,
                    ["steel"] = 80,
                    ["plastic"] = 25,
               },
               exp_per_craft = 25
          }
     },
     ['microsmg_scope'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Micro SMG Scope',
               image = 'smg_scope', -- use inventory's images
               object = {
                    name = 'w_at_scope_macro',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
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
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["rubber"] = 30,
                    ["plastic"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['smg_suppressor'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'SMG Suppressor',
               image = 'pistol_suppressor', -- use inventory's images
               object = {
                    name = 'w_at_ar_supp_02',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 300,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["rubber"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['shotgun_suppressor'] = {
          categories = {
               sub = 'attch',
          },
          item_settings = {
               label = 'Shotgun Suppressor',
               image = 'pistol_suppressor', -- use inventory's images
               object = {
                    name = 'w_at_ar_supp_02',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 200,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 200,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 90,
                    ["steel"] = 70,
                    ["rubber"] = 20,
               },
               exp_per_craft = 25
          }
     },
     ['weapon_machinepistol'] = {
          categories = {
               sub = 'smg',
          },
          item_settings = {
               label = 'Tec 9',
               image = 'weapon_machinepistol', -- use inventory's images
               object = {
                    name = 'w_sb_compactsmg',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 400,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 200,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 220,
                    ["steel"] = 120,
                    ["rubber"] = 80,
               },
               exp_per_craft = 50
          }
     },
     ['weapon_microsmg'] = {
          categories = {
               sub = 'smg',
          },
          item_settings = {
               label = 'Micro SMG',
               image = 'weapon_microsmg', -- use inventory's images
               object = {
                    name = 'w_sb_microsmg',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 400,
               hide_until_reaches_level = false,
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
                    ["metalscrap"] = 220,
                    ["steel"] = 120,
                    ["rubber"] = 80,
               },
               exp_per_craft = 50
          }
     },
     ['smg_ammo'] = {
          categories = {
               sub = 'smg',
          },
          item_settings = {
               label = 'SMG Ammo',
               image = 'smg_ammo', -- use inventory's images
               object = {
                    name = 'prop_ld_ammo_pack_01',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 400,
               hide_until_reaches_level = false,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 10, -- crafted amount
               duration = 60,
               materials = {
                    ["steel"] = 60,
               },
               exp_per_craft = 50
          }
     },
}

Config.workbench_default_model = 'gr_prop_gr_bench_04a'

Config.workbenches = {
     -- -- items
     {--[[  ]]
          table_model = "gr_prop_gr_bench_04b",
          coords = vector3(1346.55, 4391.04, 43.36),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, 350),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          -- gang = {
          --      allowed_list = { 'ballas' },
          --      allowed_grades = { ['ballas'] = { 1, 2, 3, 4 } }
          -- },
          categories = { Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     {
          table_model = 'gr_prop_gr_bench_04b',
          coords = vector3(2020.89, 3025.39, -73.71),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, 31.0),
          job = {
               allowed_list = {},
               allowed_grades = {}
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
     -- {
     --      table_model = 'gr_prop_gr_bench_02b',
     --      coords = vector3(2939.04, 4623.81, 47.72),
     --      item_show_case_offset = vector3(0.0, 0.0, 1.2),
     --      rotation = vector3(0.0, 0.0, 47.0),
     --      gang = {
     --           allowed_list = { 'ballas' },
     --           allowed_grades = { ['ballas'] = { 1, 2, 3, 4 } }
     --      },
     --      categories = { Config.categories.weapons },
     --      recipes = { weapons_recipe },
     --      radius = 3.0
     -- },
}

--gr_prop_gr_jailer_keys_01a

-- gr_prop_gr_missle_long
-- gr_prop_gr_missle_short
-- gr_int02_generator_01
-- gr_prop_gr_hammer_01

-- w_sr_heavysnipermk2_mag2
-- w_sb_smgmk2_mag2
-- w_sb_smgmk2_mag1
-- w_pi_pistolmk2_mag1
-- w_mg_combatmgmk2_mag1
-- w_ar_carbineriflemk2_mag1
-- w_ar_assaultriflemk2_mag1
-- w_ex_vehiclemissile_3
-- w_ex_vehiclemissile_1
-- w_ex_vehiclemissile_2
-- w_ex_vehiclemortar

-- w_sg_pumpshotgunmk2_mag1
-- w_sg_pumpshotgunh4_mag1
-- gr_prop_gr_adv_case

-- w_at_pi_flsh_2
-- w_at_afgrip_2
-- w_at_muzzle_1
-- w_at_muzzle_3
-- w_at_muzzle_2
-- w_at_muzzle_5
-- w_at_muzzle_6
-- w_at_muzzle_7
-- w_at_muzzle_8
-- w_at_muzzle_9

-- w_at_pi_comp_1
-- w_at_pi_rail_1
-- w_at_scope_macro_2_mk2
-- w_at_scope_small_mk2
-- w_at_scope_medium_2
-- w_at_scope_nv
-- w_at_sights_1
-- w_at_sights_smg
-- w_at_sr_supp3


-- gr_prop_gr_drill_01a

-- gr_prop_gr_driver_01a
-- gr_prop_gr_pliers_01
-- gr_prop_gr_pliers_02
-- gr_prop_gr_rasp_01
-- gr_prop_gr_rasp_02
-- gr_prop_gr_rasp_03
-- gr_prop_gr_sdriver_01
-- gr_prop_gr_sdriver_02
-- gr_prop_gr_sdriver_03

-- gr_prop_gr_vice_01a


-- pistol50_extendedclip
-- appistol_extendedclip
-- microsmg_extendedclip
-- microsmg_scope
-- smg_suppressor
-- shotgun_suppressor


-- weapon_machinepistol
-- weapon_microsmg

-- weapon_heavypistol
-- weapon_pistol
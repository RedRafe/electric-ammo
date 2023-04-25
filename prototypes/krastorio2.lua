if not mods["Krastorio2"] then return end

data:extend({
  -- Pistol ammo
  {
    type = "ammo",
    name = "electric-pistol-rounds-magazine",
    icon = "__electric-ammo__/graphics/kr-pistol-ammo.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures = {
      {
        filename = "__electric-ammo__/graphics/kr-pistol-ammo.png",
        mipmap_count = 4,
        scale = 0.25,
        size = 64
      }
    },
    ammo_type = {
      action = {
        {
          action_delivery = {
            {
              direction_deviation = 0.15,
              max_range = 22,
              projectile = "pistol-ammo-2",
              range_deviation = 0.15,
              source_effects = {
                {
                  entity_name = "explosion-gunshot",
                  type = "create-explosion"
                }
              },
              starting_speed = 1.1,
              type = "projectile"
            }
          },
          type = "direct"
        }
      },
      category = "pistol-ammo",
      target_type = "direction"
    },
    localised_name = {
      "item-name.kr-pistol-ammo"
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-a02[pistol-magazine]-2",
    stack_size = 200,
  },
  -- Rifle ammo
  {
    type = "ammo",
    name = "electric-rounds-magazine",
    icon = "__electric-ammo__/graphics/kr-rifle-ammo.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures = {
      {
        filename = "__electric-ammo__/graphics/kr-rifle-ammo.png",
        mipmap_count = 4,
        scale = 0.25,
        size = 64
      }
    },
    ammo_type = {
      action = {
        {
          action_delivery = {
            {
              direction_deviation = 0.15,
              max_range = 30,
              projectile = "rifle-ammo-2",
              range_deviation = 0.15,
              source_effects = {
                {
                  entity_name = "explosion-gunshot",
                  type = "create-explosion"
                }
              },
              starting_speed = 1.75,
              type = "projectile"
            }
          },
          type = "direct"
        }
      },
      category = "bullet",
      target_type = "direction"
    },
    localised_name = {
      "item-name.kr-rifle-ammo"
    },
    magazine_size = 30,
    subgroup = "ammo",
    order = "a[basic-clips]-a04[rifle-magazine]-2",
    stack_size = 200,
  },
  -- Anti Material ammo
  {
    type = "ammo",
    name = "electric-anti-material-rounds-magazine",
    icon = "__electric-ammo__/graphics/kr-anti-material-rifle-ammo.png",
    icon_size = 64, icon_mipmaps = 4,
    pictures = {
      {
        filename = "__electric-ammo__/graphics/kr-anti-material-rifle-ammo.png",
        mipmap_count = 4,
        scale = 0.25,
        size = 64
      }
    },
    ammo_type = {
      action = {
        {
          action_delivery = {
            {
              direction_deviation = 0.02,
              max_range = 70,
              projectile = "anti-material-rifle-ammo-2",
              range_deviation = 0.02,
              source_effects = {
                {
                  entity_name = "explosion-gunshot",
                  type = "create-explosion"
                }
              },
              starting_speed = 3,
              type = "projectile"
            }
          },
          force = "not-same",
          type = "direct"
        }
      },
      category = "anti-material-rifle-ammo",
      target_type = "direction"
    },
    localised_name = {
      "item-name.kr-anti-material-rifle-ammo"
    },
    magazine_size = 7,
    subgroup = "ammo",
    order = "a[basic-clips]-a08[anti-material-rifle-magazine]-2",
    stack_size = 200,
  },
  -- Pistol Recipe
  {
    type = "recipe",
    name = "electric-pistol-rounds-magazine",
    main_product = "electric-pistol-rounds-magazine",
    category = "advanced-crafting",
    energy_required = 3,
    ingredients = {{ElectricAmmo.BATTERY_NAME, 1}},
    results = {
      {
        name = "battery",
        probability = 0.97,
        amount = 1
      },
      {
        name = "electric-pistol-rounds-magazine",
        probability = 0.97,
        amount = 1
      }
    },
    emissions_multiplier = 8,
    enabled = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
  },
  -- Anti Material Recipe
  {
    type = "recipe",
    name = "electric-anti-material-rounds-magazine",
    main_product = "electric-anti-material-rounds-magazine",
    category = "advanced-crafting",
    energy_required = 3,
    ingredients = {{ElectricAmmo.BATTERY_NAME, 3}},
    results = {
      {
        name = "battery",
        probability = 0.92,
        amount = 3
      },
      {
        name = "electric-anti-material-rounds-magazine",
        probability = 0.92,
        amount = 1
      }
    },
    emissions_multiplier = 8,
    enabled = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
  },
})

if data.raw.technology["electric-ammo"] then 
  local effects = data.raw.technology["electric-ammo"].effects
  if effects then
    table.insert(
      effects,
      {
        type = "unlock-recipe",
        recipe = "electric-pistol-rounds-magazine"
      }
    )
    table.insert(
      effects,
      {
        type = "unlock-recipe",
        recipe = "electric-anti-material-rounds-magazine"
      }
    )
  else
    log("Electric Ammo: no effects found")
  end
else
  log("Electric Ammo: no tech found")
end
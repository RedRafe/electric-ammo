-- Electric Rounds Magazine 

data:extend({
  -- Ammo
  {
    type = "ammo",
    name = "electric-rounds-magazine",
    icon = "__electric-ammo__/graphics/electric-rounds-magazine.png",
    icon_size = 64, icon_mipmaps = 4,
    ammo_type = {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit",
              offsets = {{0, 1}},
              offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
            },
            {
              type = "damage",
              damage = { amount = 8, type = "physical"}
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-b[piercing-rounds-magazine]-2",
    stack_size = 200
  },
  -- Recipe
  {
    type = "recipe",
    name = "electric-rounds-magazine",
    main_product = "electric-rounds-magazine",
    category = "advanced-crafting",
    energy_required = 3,
    ingredients = {{ElectricAmmo.BATTERY_NAME, 2}},
    results = {
      {
        name = "battery",
        probability = 0.95,
        amount = 2
      },
      {
        name = "electric-rounds-magazine",
        probability = 0.95,
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
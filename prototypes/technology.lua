data:extend({
  -- Technology
  {
    type = "technology",
    name = "electric-ammo",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__electric-ammo__/graphics/electric-ammo.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-rounds-magazine"
      }
    },
    prerequisites = {"military-science-pack", "ff-battery-charging"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30
    },
    order = "e-a-b"
  }
})

if not ModOfTheFleet then
  ModOfTheFleet = {}
end

ModOfTheFleet = {
  show_options_button = false,
}

ModOfTheFleet = SMODS.current_mod

SMODS.Atlas {
  object_type = "Atlas",
  key = "PLH",
  path = "placeholders.png",
  px = 71,
  py = 95,
}

SMODS.Rarity {
  key = "taikyokuShogi",
  pools = { ["Joker"] = true },
  default_weight = 0,
  badge_colour = HEX('faecc0'),
}

-- Jokers
function loadJokers()
  assert(SMODS.load_file("Items/Jokers/taikyokuShogiJokers.lua"))()
end


loadJokers()
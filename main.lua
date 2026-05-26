
if not ModofGames then
  ModofGames = {}
end

ModofGames = {
  show_options_button = false,
}

ModofGames = SMODS.current_mod

SMODS.Atlas {
  object_type = "Atlas",
  key = "PLH",
  path = "placeholders.png",
  px = 71,
  py = 95,
}

SMODS.Rarity {
  key = "taikyokushogi",
  pools = { ["Joker"] = true },
  default_weight = 0,
  badge_colour = HEX('faecc0'),
}

-- Jokers
function loadJokers()
  assert(SMODS.load_file("Items/Jokers/taikyokuShogiJokers.lua"))()
end


loadJokers()
SMODS.Joker{ --Lion Hawk
    key = "lionhawkTS",
    config = { extra = { repetitions = 1, emult = 1.1 } },
    pos = { x = 0, y = 0 },
    cost = 1,
    rarity = "mog_taikyokushogi",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'PLH',

    in_pool = function(self, args)
        return false
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.extra.repetitions * #context.full_hand,
                message = localize('k_again_ex')
            }
        end
        if context.individual and context.cardarea == G.play and not context.blueprint then
            return {
                e_mult = card.ability.extra.emult
            }
        end

        local target_joker = nil

        local my_pos = nil
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                my_pos = i
                break
            end
        end
        target_joker = (my_pos and my_pos < #G.jokers.cards) and G.jokers.cards[my_pos + 1] or nil

        return SMODS.blueprint_effect(card, target_joker, context)
    end
}




execute as @a[scores={mc_LecternUsed=1..}] run function the_spire:game/states/2/state/vote_evict/player_used


execute as @a unless score @s G_EvictedVote = @s G_PreEvictedVote run function the_spire:game/states/2/state/vote_evict/changed_vote
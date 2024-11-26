~ "strain.ua" ~ Discard Keep

# keep on empty list returns empty list
⍤⤙≍ [] Keep [] ∘

# keeps everything
⍤⤙≍ [1 3 5] Keep [1 3 5] (↘ true)

# keeps nothing
⍤⤙≍ [] Keep [1 3 5] (↘ false)

# keeps first and last
⍤⤙≍ [1 3] Keep [1 2 3] (2 n:◿ 1 n:=)

# keeps neither first nor last
⍤⤙≍ [2] Keep [1 2 3] (2 n:◿ 0 n:=)

# keeps strings
⍤⤙≍ ["zebra" "zombies" "zealot"] Keep ["apple" "zebra" "banana" "zombies" "cherimoya" "zealot"] (0 s:@ nip ’z n:=)

# keeps lists
⍤⤙≍ [[5 5 5], [5 1 2], [1 5 2], [1 2 5]] Keep [[1 2 3], [5 5 5], [5 1 2], [2 1 2], [1 5 2], [2 2 1], [1 2 5]] (5 ’ n:= a:⊗ nip number? nip)
# discard on empty list returns empty list?
⍤⤙≍ [] Discard [] (↘ true)

# discards everything?
⍤⤙≍ [] Discard [1 3 5] (↘ true)

# discards nothing?
⍤⤙≍ [1 3 5] Discard [1 3 5] (↘ false)

# discards first and last?
⍤⤙≍ [2] Discard [1 2 3] (2 n:◿ 1 n:=)

# discards neither first nor last?
⍤⤙≍ [1 3] Discard [1 2 3] (2 n:◿ 0 n:=)

# discards strings?
⍤⤙≍ ["apple" "banana" "cherimoya"] Discard ["apple" "zebra" "banana" "zombies" "cherimoya" "zealot"] (0 s:@ nip ’z n:=)

# discards lists?
⍤⤙≍ [[1 2 3], [2 1 2], [2 2 1]] Discard [[1 2 3], [5 5 5], [5 1 2], [2 1 2], [1 5 2], [2 2 1], [1 2 5]] (5 ’ n:= a:⊗ nip number? nip)

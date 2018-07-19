# Parametricity Proofs

Proofs of the number of inhabitants of polymorphic functions via isomorphisms to
algebraic datatypes. For example, we prove that `id :: a -> a` has one inhabitant
via an iso to `()`. Same thing for `(.) :: (b -> c) -> (a -> b) -> a -> c`.

One super cool result is that if you use the backwards part of the proof to generate the
original function, i.e. apply
`() -> (forall a b c. (b -> c) -> (a -> b) -> a -> c)` to `()`, GHC will fuse the intermediate
steps and you will get out the actual definition of `(.)`.

Based on [this reddit thread](https://www.reddit.com/r/haskell/comments/2bj7it/let_me_tell_you_about_the_types_of_data/cj5y701)

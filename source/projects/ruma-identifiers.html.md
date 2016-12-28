---
title: Ruma - ruma-identifiers
project: ruma-identifiers
releases: https://crates.io/crates/ruma-identifiers
documentation: https://docs.rs/ruma-identifiers
---

`ruma-identifiers` contains types for Matrix identifiers for events, rooms, room aliases, and users.
An "identifier" is an ID string unique to Matrix resources of that type.
For example, `@carl:example.com` is a Matrix user ID.
`ruma-identifiers` is used by the Ruma homeserver and several of the other Ruma libraries.
It should be used whenever a developer needs to work with Matrix IDs, because it provides additional correctness guarantees over representing Matrix IDs as simple strings.

+++
title = "This Week in Ruma"
date = 2016-07-31
extra.author ="Jimmy Cuadra"
+++

This week [serde 0.8.0](https://github.com/serde-rs/serde/releases/tag/v0.8.0) was released, offering a new serialization API.
Most of the work on Ruma was towards serialization of the ID and event types.
This will support the next step of implementing APIs in the homeserver that take events as user input.
In addition to the changes landed in ruma-events, I've been working on figuring out how to approach Matrix types that are represented as enums in Rust code but involve checking the value of a key in the JSON structure of the serialized form to determine which variant it is.
I hope to get this nailed down and committed by next week's update.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Implement serialization and deserialization for ID types.
* Change the `new` constructor to an implementation of `TryFrom` and add a separate `generate` constructor for generating new IDs with random localparts.
* Begin running the test suite on Travis CI.
* Publish the crate to crates.io.
  ruma-identifiers is the first Ruma component to get a crates.io release!

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Convert the types of struct fields that represent a Matrix ID from `String` to the relevant type from ruma-identifiers.
* Manually implement serialization and deserialization for a few enum types where the variant name appears in JSON camel cased.
  This was initially done by copy/pasting similar code between types, but was replaced with a macro that reduced a lot of duplication (and actually increased the test suite coverage by testing every single variant of each enum.)
* Begin running the test suite on Travis CI.

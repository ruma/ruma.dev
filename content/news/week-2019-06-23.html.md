+++
title = "This Week in Ruma"
date = 2019-06-23
extra.author ="Jimmy Cuadra"
+++

## From the editor

This week was spent working on a big revamp of [ruma-events](https://github.com/ruma/ruma-events), the library that defines Rust types for the "events" used in Matrix.
The previous week, I did a pass through the entire library to bring it up to date with version r0.5.0 of the Matrix specification.

After some discussion in [#ruma:matrix.org](https://matrix.to/#/#ruma:matrix.org), I decided to make a move towards treating ruma-events as a higher-level library.
Previously, ruma-events has more or less offered Rust types that are exact representations of the JSON structures used by Matrix.
However, by representing events this way, it would be possible for users to easily create values that, while valid JSON, would be invalid events according to the specification.

The way we're approaching this problem is by separating serialization/deserialization of JSON from validation of events.
Rather than directly implementing `serde::Deserialize`, event types will be converted from a string of JSON data using `std::str::FromStr`.
This implementation will deserialize the data internally and then validate it, returning either a valid event, or a raw `serde_json::Value` along with an error message about why the event was invalid.
The latter form is necessary because invalid events will always be present in the Matrix system, created via bugs or other problems in homeserver implementations.
Once an event is in the event graph, other servers will receive these invalid events over federation, and must still persist them and deal with them as they are.

Similar to the new interface around deserialization, the serialized form of an event created by ruma-events may not directly match the structure of the Rust type.
ruma-events will instead expose variants of each event to ensure they can only be created in valid states.

To reduce the boilerplate that this approach necessarily causes (because for many events there will now be two structures: the public one and the private one used for converting to and from JSON), I started a new procedural macro, [ruma-events-macros](https://github.com/ruma/ruma-events-macros), to make the most common cases require minimal code in ruma-events.
It's been a lot of work, and there's still probably another week or more to go to finish implementing ruma-events using the new approach.
But when it's done, the result will be a Rust library for Matrix events that leaves less room for users to accidentally do the wrong thing, while also supporting interoperation with other Matrix software that isn't so strict.

+++
title = "This Week in Ruma"
date = 2016-06-05
extra.author ="Jimmy Cuadra"
+++

## Notable changes to `ruma`

* Add initial version of the `/createRoom` endpoint.

  This preliminary version of room creation takes no parameters and just returns the ID of the newly created room.

## Notable changes to `ruma-events`

* Remove event traits.

  `Event`, `RoomEvent`, and `StateEvent` are no longer traits.
  Instead, each event type just has the necessary fields.
  This will be revised to use [RFC #1546](https://github.com/rust-lang/rfcs/pull/1546) if it is accepted.

* Make all event type fields public.

* Derive `Debug`, `Deserialize`, and `Serialize` for all types.

* Add types for all *m.room.message* and all its subtypes.

## Matrix at large

Next week, some of the Matrix core team will be visiting San Francisco (from London) for [Decentralized Web Summit](http://www.decentralizedweb.net/).
Some bay area Matrix developers are planning to get together to meet in person and chat about Matrix.
If you live in the bay area and would like to join us, please come chat in [#sv:matrix.org](https://vector.im/beta/#/room/#sv:matrix.org) and help pick a time and place!

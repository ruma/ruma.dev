+++
title = "This Week in Ruma"
date = 2016-10-09
extra.author ="Jimmy Cuadra"
+++

Many thanks to Ruma's contributors this week.
The status document is quickly going from red to green!

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added support for listing the members of a room.
* Added support for room-specific client configuration data.
* Added a new custom error code for cases where the client submits an invalid parameter.
* The creator of a room now automatically joins is.

## Notable changes to [ruma-signatures](https://github.com/ruma/ruma-signatures)

* Added a `Signature` type that is produced from a `SigningKey`.
* Added a `SignatureSet` type that works like a set but serializes to a map, which is how a homeserver's signatures are represented in Matrix events.

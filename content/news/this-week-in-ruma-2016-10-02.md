+++
title = "This Week in Ruma"
date = 2016-10-02
extra.author = "Jimmy Cuadra"
+++

Ruma had some major progress this week.
We're getting ever closer to the first alpha release.
Ruma's fantastic community contributed implementations for several new API endpoints, with more on the way.

On Friday I did my second live stream of Ruma development.
If you missed it, you can [watch the recording](https://www.youtube.com/watch?v=gApgMPEwvSc).
In it, I work on a new crate, ruma-client-api, the purpose of which is to separate the request and response data types for each API endpoint from the homeserver so that the same types can be used by client code.
The general structure of the API has changed since the Friday screencast, and is coming together very nicely now.

And finally, a milestone was reached with ruma-events by converting the `Event`, `RoomEvent`, and `StateEvent` types from structs to traits, greatly simplifying the overall API, and paving the way for better generic treatment of the different event kinds in the Ruma homeserver.
Initially I thought it would require language support for [fields in traits](https://github.com/rust-lang/rfcs/pull/1546), but I managed to get almost the same effect with macros.
At least ergonomic enough that I'm comfortable stabilizing the current API without fields in traits, at least once I verify that it works well in the homeserver code.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added support for deactivating an account.
* Added support for joining a room.
* Added support for listing the members of a room.
* Cleaned up the way variable URL path parameters are handled, moving all the logic in to Iron middleware, and reducing the volume of code in each API's handler function.
* Squashed all database migrations into a single "prerelease" migration to make it easier for contributors to work on features requiring new tables concurrently, and because there is no need to have more than one migration per released version of Ruma.

## Notable changes to [ruma-client-api](https://github.com/ruma/ruma-client-api)

* Added this new crate to share the request and response types between client and server.
* Overall API designed and types added for about a third of the Matrix client API functionality so far.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* `Event`, `RoomEvent`, and `StateEvent` are now traits, which unifies and simplifies the crate's overall API.
* Enums now implement `Display` and `FromStr`.


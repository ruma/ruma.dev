+++
title = "This Week in Ruma"
date = 2017-02-12
extra.author ="Jimmy Cuadra"
+++

## From the editor

Progress on the Ruma homeserver has slowed a bit while we wait for the next version of the Matrix specification to be published.
There have been some significant changes to Synapse (the reference implementation homeserver) and Riot (the flagship Matrix client) that are not yet reflected in the spec, and as such, releasing an initial version of Ruma would not be of much value since it could have significant breakage with Riot.

Progress on ruma-api, ruma-client-api, and ruma-client continues, however.
We're pushing ahead on one of the new API designs (codenamed "Ralith" after the community member of the same name, whose ideas it is based on) and it's working well so far.
You can see the in-progress [changes to ruma-api](https://github.com/ruma/ruma-api/pull/9), the in-progress [changes to ruma-client-api](https://github.com/ruma/ruma-client-api/pull/17), and the in-progress [changes to ruma-client](https://github.com/jplatte/ruma-client/tree/ralith) that we're using to test out this new design.
Further review and comments on these changes are welcome!

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added support for transaction IDs for event creation.
* Added the `GET /rooms/:room_id/state` endpoint.
* Updated to the Macros 1.1 version of code generation crates.
* Updated Serde to the 0.9 series and Diesel to the 0.10 series.
* Added a version number field to Ruma's configuration to allow for future changes to the schema.
* Changed the behavior of the deprecated `/tokenrefresh` endpoint to match the behavior of Synapse.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Published version 0.8.1, which adds missing Diesel trait implementations needed for the homeserver.

## New contributors

* [Euan Kemp](https://github.com/euank)

## Call for participation

Interested in getting involved with Ruma?
Here are some good places to start:

Previously featured and still available:

* \[feature\] [Sending a m.room.member event again after changing avatar or displayname](https://github.com/ruma/ruma/issues/157)
* \[discussion\] [Bikeshed: Module names](https://github.com/ruma/ruma-client-api/issues/10)
* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/ruma/blob/master/STATUS.md) for a list.

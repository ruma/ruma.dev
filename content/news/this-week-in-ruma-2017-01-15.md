+++
title = "This Week in Ruma"
date = 2017-01-15
extra.author = "Jimmy Cuadra"
+++

## From the editor

This week I want to take a moment to talk about something personal.
My best friend, [Tamara Boyens](https://twitter.com/TamaraBoyens), passed away last Friday, January 6, after more than a year of suffering from a spine injury and various related issues.
It's been incredibly heartbreaking for everyone who loved her.
She was a friendly, lively person, and was genuinely interested in any topic you would talk to her about.
She and I talked online a lot—many hours every day, year after year.
This was especially true after we both moved away from the city where we met.
Because chatting online was the way we talked the most, we were always looking for a better chat system than what was available to us, and this was a large part of my initial motivation to get involved with Matrix and build Ruma.
I have [dedicated Ruma](https://github.com/ruma/ruma#dedication) to her memory.
I hope, once it reaches production quality, that it will help many people to strengthen their relationships and get the use out of it that Tamara and I no longer can.

And now, on with the project updates.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added `POST /rooms/:room_id/leave` endpoint.
* Fixed intermittent deadlocks in the test suite.
* All users in trusted private chats now have equal privileges.
* Improved some error handling and factored out some duplicated logic.
* Replaced some string fields with appropriate ruma-identifiers types.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Published version 0.3.0 to crates.io.
* Added missing trait implementations for `PresenceState`.

## Notable changes to [ruma-client](https://github.com/ruma/ruma-client)

* Began spiking out the API for this high-level Matrix client library.

## Notable changes to [ruma-client-api](https://github.com/ruma/ruma-client-api)

* The "supported versions" API endpoint has been moved into an `unversioned` module.
* Converted path parameters in docs from colon-snake-case to brace-lower-camel-case
* Updated to ruma-api 0.3.0.

## Notable changes to [ruma-api](https://github.com/ruma/ruma-api)

* Published versions 0.2.0 and 0.3.0 to crates.io.
* Added a `Deserialize + Serialize` constraint to `Endpoint::QueryParams`, for use with the serde_urlencoded crate.
* `Endpoint::router_path`'s return type changed from `String` to `&'static str`.
* Added new required methods to `Endpoint`: `name`, `description`, `requires_authentication`, and `rate_limited`.

## New contributors

* [Aurabindo J](https://github.com/aurabindo)
* [Antoine Proulx](https://github.com/magicienap)

## Call for participation

Interested in getting involved with Ruma?
Here are some good places to start:

New:

* \[feature\] [Add an option to the CLI to supply the path to the config file](https://github.com/ruma/ruma/issues/151)
* \[feature\] [Sending a m.room.member event again after changing avatar or displayname](https://github.com/ruma/ruma/issues/157)

Previously featured and still available:

* \[feature\] [Add missing documentation](https://github.com/ruma/ruma-client-api/issues/8)
* \[discussion\] [Bikeshed: Module names](https://github.com/ruma/ruma-client-api/issues/10)
* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/homeserver/blob/master/STATUS.md) for a list.

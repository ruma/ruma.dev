+++
title = "This Week in Ruma"
date = 2017-01-01
extra.author = "Jimmy Cuadra"
+++

## From the editor

The last couple weeks have been very busy for Ruma, in spite of the holiday season!
We released another of the Ruma crates to crates.io, [ruma-events](https://github.com/ruma/ruma-events), which contains Rust types for all the events in the Matrix specification.
Events are the primary data structures that are exchanged in Matrix.
ruma-events makes it easy for client and server code to share the same representations of these events, and to convert them to JSON and back.
ruma-events was the first component of Ruma that was developed, so I'm very happy to see it reach a stable enough point to be published.
The Ruma homeserver had been using it as a Git dependency for a while, but now it's at a good place to start using for client applications.

There's also been a lot of contributions to [ruma-client-api](https://github.com/ruma/ruma-client-api).
This crate contains types for the requests and responses for each of the API endpoints in Matrix's client-server specification.
In the near future, it will replace the the request and response types currently used by the homeserver, and is already being used to spike out an implementation of [ruma-client](https://github.com/ruma-ruma-client), a high-level client library.

These Matrix libraries are part of the broader ecosystem and vision of the Ruma project.
Our goal is not only to build a Matrix homeserver, but to build a collection of Matrix libraries that developers can use to build high quality, interoperable Matrix-enabled software in Rust.
We recently launched a new [projects page](/projects/) on the website that explains each library and how it relates to the others in detail.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added support for the room creation API endpoint's `initial_state` parameter.
* Implemented the API endpoints for filters.
* Implemented partial support for the event synchronization API endpoint.
* Implemented the API endpoint for joining a room with either its room ID or a room alias ID.
* Improved error handling to reduce the amount of cloning.
* Added missing Content-Type header for error responses.
* Fixed a bug that used the wrong value for a user's power levels in certain situations.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Now published to crates.io.
* Added missing variants of the "stripped" versions of events.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Released crate version 0.6.0, which includes a new `RoomIdOrAliasId` enum type for APIs that accept either form of Matrix room identifier.

## Notable changes to [ruma-client-api](https://github.com/ruma/ruma-client-api)

* All API endpoints except push notifications are now implemented.
* Added links to the relevant section of the Matrix specification for each API endpoint.

## Notable changes to [ruma-api](https://github.com/ruma/ruma-api)

* Created and published this small crate which contains core types that will be used by all Ruma crates that implement request and response types for the various Matrix APIs.

## Notable changes to [www.ruma.io](https://github.com/ruma/ruma.github.io)

* Added a new [projects page](/projects/).
* Added a script to determine new contributors to the project across all repositories.

## New contributors

* [Andreas Brönnimann](https://github.com/exul)
* [Victor Berger](https://github.com/vberger)

## Call for participation

Interested in getting involved with Ruma?
Here are some good places to start:

New:

* \[feature\] [Add missing documentation](https://github.com/ruma/ruma-client-api/issues/8)
* \[feature\] [Convert path parameters in docs from colon-snake-case to brace-lower-camel-case](https://github.com/ruma/ruma-client-api/issues/9)
* \[discussion\] [Bikeshed: Module names](https://github.com/ruma/ruma-client-api/issues/10)

Previously featured and still available:

* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[bug\] [Deadlock error while running test suite](https://github.com/ruma/ruma/issues/121)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)
* \[discussion\] [Protect against database concurrency bugs](https://github.com/ruma/ruma/issues/132)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/homeserver/blob/master/STATUS.md) for a list.

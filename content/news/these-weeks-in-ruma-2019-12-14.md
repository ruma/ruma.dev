+++
title = "These Weeks in Ruma"
date = 2019-12-14
extra.author = "Jonas Platte"
+++

There's been steady progress since the last news entry, so I thought I'd write a small progress
update again.

These crates saw a new release:

* ruma-api-macros 0.9.0 (with an alpha beforehand)
* ruma-api 0.12.0 (with an alpha beforehand)
* ruma-client-api 0.5.0
* ruma-client 0.3.0-beta.2
* ruma-identifiers 0.14.1

## What changed?

The biggest thing that changed is that the temporary non-support of server-side usage of ruma-api
that I wrote about last time has ended. Restoring server-side support also required some changes to
ruma-client-api, but those were rather minimal because all of the additional logic that deals with
the client / server side distinction is hidden away in ruma-api(-macros).

Moreover, ruma-client now has no more dependencies with alpha or beta versions, and will have its
0.3.0 release soon (pending a small update from hyper). ruma-identifiers now supports historical
user IDs, which are user IDs can't actually be created on a matrix homeserver because they contain
invalid characeters, but nevertheless have to be supported because older versions of the
specification allowed these characters and as such some users still have them in their IDs.

## Server-side support

To support fallible deserialization on both ends of the protocol, the request-sending /
response-receiving side (when dealing with the client-server protocl, this is the client) and the
request-receiving / response-sending side (the server) now use different types if request or
response structs contain events. For every `Request` or `Response` that contains an event (or
another struct that contains another struct that contains a `Vec` of events and such) we now
generate a corresponding `IncomingRequest` / `IncomingResponse`. The non-`Incoming` structs don't
use ruma-events' `EventResult` type, while the `Incoming` types do.

For details about how these new structs are generated, see the [documentation for the new `Outgoing`
derive macro](https://docs.rs/ruma-api/0.12.0/ruma_api/derive.Outgoing.html).

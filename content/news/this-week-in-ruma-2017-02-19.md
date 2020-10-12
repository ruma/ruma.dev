+++
title = "This Week in Ruma"
date = 2017-02-19
extra.author = "Jimmy Cuadra"
+++

## From the editor

Progress on ruma-api and ruma-client-api, converting ruma-client-api over to the new approach ruma-api is using.
After converting several of the modules using macros, I decided to take another stab at using a macros 1.1 procedural macro for automatically implementing the details of each request and response type.
The result is the new [ruma-api-derive](https://github.com/ruma/ruma-api-derive).
So far it handles only a couple of simple variations, but with some of the groundwork laid, it should be easier now to fill out the remaining functionality.
The result will be that ruma-client-api will be completely declarative, and won't have to resort to manual trait implementation for a few odd cases that didn't fit the pattern of the "macros by example" macros.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Updated Diesel to the 0.11 series.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Published version 0.9.0, which updates Diesel to the 0.11 series.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Published version 0.6.0, which updates ruma-identifiers to the 0.9 series.

## Call for participation

Interested in getting involved with Ruma?
Here are some good places to start:

Previously featured and still available:

* \[feature\] [Sending a m.room.member event again after changing avatar or displayname](https://github.com/ruma/ruma/issues/157)
* \[discussion\] [Bikeshed: Module names](https://github.com/ruma/ruma-client-api/issues/10)
* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/homeserver/blob/master/STATUS.md) for a list.

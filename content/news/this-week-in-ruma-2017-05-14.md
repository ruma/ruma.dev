+++
title = "This Week in Ruma"
date = 2017-05-14
extra.author = "Jimmy Cuadra"
+++

## From the editor

It's been several months since the last This Week in Ruma.
There has been some work on Ruma during this time, but development has largely been on hiatus while we wait for the dust to settle on two things:

1. Stabilization and release of hyper 0.11 (the tokio-based async rewrite).
2. A new version of the Matrix specification that includes the many changes since the current version.

The former has been in the "nearly done" state for a while now, so we've been doing a bit of development against hyper's master branch.
As far as I know, no significant API changes are expected at this point.
The latter has been delayed significantly because the Matrix team has been up to their eyeballs in work on [Riot](https://riot.im/), particularly in squashing issues with end-to-end encryption as they try to move it out of beta.
While we would like a new spec to help in moving Ruma forward, the Matrix team has our full support on their current priorities, as fully working encryption for messages is simply way more important for the world right now.

A change in the Ruma project worth noting is that I've decided to end my policy of "no new unstable features," effectively deprioritizing moving Ruma's crates to stable Rust.
The simple reaosn for this is that there are still unstable features that change what the ideal API for some of our crates would be.
Having the best possible API should take priority over which version of Rust is required, especially with how easy it is to install Rust with rustup.

Personally, I've been more focused on the client-side libraries recently.
The past week I've made a lot of progress on finalizing and implementing the API for ruma-api, ruma-client-api, and ruma-client.
In the last update back in February, I mentioned working on a custom derive to make the implementation of Matrix APIs easier.
That has evolved into a full Macros 2.0 procedural macro that offers a very succinct, declarative API that will make the client libraries much simpler.
This work is still very much in progress, but having finally figured out an approach for this is a big milestone in having a usable Matrix client library for Rust.
We're excited to see what Rust developers build with it when it's ready.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added the `/rooms/:room_id/kick` API endpoint.
* Added initial implementation for the room states in the `/sync` API endpoint.
* Corrected the structure of authentication parameters in login requests.
* Fixed the behavior of the `next_batch` token when there are no new events for the `/sync` API endpoint.
* Added basic implementation for the pushers API endpoint.
* Return empty JSON objects as the default response for Riot compatibility.

## Notable changes to [ruma-api](https://github.com/ruma/ruma-api)

* Revised the API into a simpler form that specifies conversions between hyper's types and its own.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Published versions 0.10.0 and then 0.11.0 with small changes, most notably updating to serde 1.0.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Published versions 0.7.0 and then 0.8.0 with small changes, most notably updating to serde 1.0.

## New contributors

* [Brian Smith](https://github.com/briansmith)

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

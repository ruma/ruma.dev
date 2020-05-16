+++
title = "This Week in Ruma"
date = 2016-09-18
extra.author ="Jimmy Cuadra"
+++

Apologies for the lack of updates the last two weeks!
Two weeks ago I had family visiting over the weekend and last weekend I was in Portland for the first ever RustConf, which was fantastic!

In addition to the changes below, I've been working on transaction support for the message event creation API.
It looks like it's going to require a few features that are not yet supported by Diesel: `SET TRANSACTION` and tables with composite primary keys.
These are already on the roadmap for Diesel, so more progress will be made on this front soon.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Some changes to error handling to be more ergonomic, provide better user-facing error messages, and to follow Rust conventions better.
* Added information to the project's README about how to develop without Docker.
* Added integration tests for the message event creation API, which uncovered a bug that is now fixed.
* The room alias creation API now correctly returns a 409 HTTP status code if the alias already exists.

## New contributors

* [Jonas Platte](https://github.com/jplatte)

## Rust at large

* Talked with Niko Matsakis at RustConf and concluded that the functionality proposed in [RFC 1546](https://github.com/rust-lang/rfcs/pull/1546) will be necessary for ruma-events to define the different kinds of Matrix events as traits instead of structs.
  I added a somewhat rambly explanation of this in the comments on the RFC.

## Matrix at large

* The Matrix client Vector has come out of beta and has been rebranded as [Riot](https://riot.im/)!
  End-to-end encrypted messages are finally here!

+++
title = "New releases"
date = 2019-11-05
extra.author = "Jonas Platte"
+++

Last week, we uploaded 7 (!) new versions of our crates to crates.io:

* ruma-events-macros 0.2.0
* ruma-events 0.15.0
* ruma-events 0.15.1 (bugfix release because ruma-events 0.15.0 was released a tad too early)
* ruma-api-macros 0.8.0
* ruma-api 0.11.0
* ruma-client-api 0.4.0
* ruma-client 0.3.0-beta.1

## What changed?

A quick overview:

* ruma-events 0.15 improves event deserialization and validation
* the latest ruma-api & ruma-client-api are only useable for implementing client-side stuff, server-side functionality will be added back in a later release
* ruma-client 0.3.0-beta.1 supports async/await, the final version will be published after its dependencies are final too

And now to the technical details...

## Fallible event deserialization

The most important change is one in ruma-events, and it is *the* reason all of the other crates saw a new release too. ruma-events 0.15.0 introduces a type `EventResult<T>`, which is almost the same as `Result<T, ruma_events::InvalidEvent>` (and it is in fact convertible to that) but with one important difference: It implements `serde::Deserialize` in a different way. Deserializing an `EventResult<T>` almost always succeeds. It tries to deserialize the `T`, and if that fails, falls back to `serde_json::Value` deserialization. However, in contrast to the fallback one would get with `Result<T, serde_json::Value>` deserialization which is supported by serde directly, we also capture the error message from `T`s deserialization... or validation:

## Event validation

I left out one detail in the previous section, and that is that the `T` in `EventResult<T>` doesn't actually need to implement `Deserialize`. Instead, it needs to implement `TryFromRaw`. This trait is very similar to `TryFrom` from the standard library, and in fact we would have used `TryFrom` directly, were it not for coherence issues¹. This trait is implemented for every event (content) type in ruma-events and allows conversion of a private raw version of that type, which does implement `Deserialize`, to the actual event (content) type. All of this is done to enable validation of events during deserialization, without having to write the actual deserialization code manually. There are currently few events that need this validation step after deserialization (most of the constraints the matrix spec puts on json fields beyond their types are captured in their Rust types, e.g. using `UserId` instead of `String`), but it is nevertheless useful to have the required mechanisms in place.

¹ [RFC 2451](https://github.com/rust-lang/rust/issues/55437) "Re-Rebalancing Coherence" might allow us to switch to `TryFrom` in a future release, though I have not tested this yet

## Temporary non-support of server-side usage

Because of the whole fallible deserialization thing, we might not be able to use the same Rust types on both client & server anymore. Due to that and the server not being worked on currently, we decided to temporarily remove request deserialization and response serialization from ruma-api and ruma-api-macros, leaving request serialization and response deserialization, as needed for the client use case. This affects ruma-client-api as well, through its use of the aforementioned crates.

## Async/await in ruma-client

As listed at the beginning, we published ruma-client 0.3.0-beta.1. This release supports `async` / `await` syntax in addition to using all the latest lower-level ruma crates. While `async` / `await` will become stable with Rust 1.39.0 on 2019-11-09, tokio 0.2.0 is expected to take some more time to come out, which will in turn affect hyper 0.13.0's final release and thus our 0.3.0 release. Nevertheless, ruma-client 0.3.0-beta.1 can be used today on Rust beta or nightly.


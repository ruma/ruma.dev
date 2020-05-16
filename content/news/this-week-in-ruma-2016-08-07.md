+++
title = "This Week in Ruma"
date = 2016-08-07
extra.author = "Jimmy Cuadra"
+++

This week I began working on upgrading the libraries used by Ruma.
In particular, Diesel and Serde have new minor versions (which prior to 1.0 are effectively major versions.)
I'm also working on integrating ruma-identifiers and the recent round of changes to ruma-events back into Ruma.
Because of library changes, there are a lot of code updates needed.
I got the compiler errors down from about 60 to about 10, but there are a few blocking issues to fix the rest.
These are noted in the section on Rust below.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Replace macro for enum implementation with more straightforward usage of Serde annotations where possible.
  This means that `Display` and `FromStr` are no longer implemented for these types, but they may not be used by Ruma anyway.
  They'll be added back if and when there is an actual need.

## Rust at large

* [diesel-rs/diesel#394](https://github.com/diesel-rs/diesel/pull/394) Remove the `Copy` constraint from `Identifiable`.
  In Diesel 0.7.0, struct fields representing a database table's primary key must be `Copy`.
  Because strings are used for this in Ruma, this PR must be merged in order to avoid a bunch of otherwise unnecessary newtypes in Ruma.
* [iron/body-parser#72](https://github.com/iron/body-parser/pull/72): Bump Serde to 0.8.
  Needed due to version conflicts with `serde_json::Value`.

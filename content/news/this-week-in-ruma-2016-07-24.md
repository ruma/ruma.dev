+++
title = "This Week in Ruma"
date = 2016-07-24
extra.author ="Jimmy Cuadra"
+++

This was a relatively quiet week in terms of code changes.
I'm working on nailing down ruma-identifiers in preparation for using it in ruma-events before I start working on serialization in ruma-events, which is needed for the next step in ruma itself.
Serde is about to release 0.8, which has some breaking changes including a revamped API for manually implementing serialization.
I started to learn how it works since I'll need to use it as soon as it's released.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Add `EventId`, `RoomId`, and `RoomAliasId`.

## Matrix at large

* I discovered that the new spec introduction that includes the grammar for Matrix IDs is missing some important details about event and room IDs.
  The spec currently defines them as `sigil opaque_id ":" server_name` but does not define `opaque_id` at all.
  Certain limitations are important to note for the purposes of parsing and compatibility, such as allowed character set and minimum and maximum lengths.
  I think it's also important to disallow characters that would be problematic for display or parsing, such as whitespace, newlines, and colons, which are also used as the delimiter between opaque ID, IP/hostname, and port.
  There was already a JIRA issue for specifying these types of IDs, [SPEC-389](https://matrix.org/jira/browse/SPEC-389), so I added my concerns there.

## Rust at large

* [rustup 0.4](https://github.com/rust-lang-nursery/rustup.rs/releases/tag/0.4.0) was released, which contains the change I made previously for allowing arbitrary toolchains to be installed alongside rustup itself.
  I'll be using this to improve Ruma's Docker development image.
* [serde-rs/serde#462](https://github.com/serde-rs/serde/pull/462): A simple doc fix I made to Serde while looking through the 0.8 changes.
* [rust-lang/rfcs#1681](https://github.com/rust-lang/rfcs/pull/1681): Procedural macros 1.1.
  Only tangentially related to Ruma, but an important effort that could help in getting Ruma onto stable Rust.

+++
title = "This Week in Ruma"
date = 2019-07-07
extra.author = "Jimmy Cuadra"
+++

## From the editor

Work continues on the major revamp of ruma-events [mentioned in the last update](/news/this-week-in-ruma-2019-06-23/).
Only a few modules remain to be converted to the new API.
It's not hard work, but it's a bit tedious, so I've been dragging on getting it done.
There are also a few modules that are somewhat blocked on [an issue in *ring*](https://github.com/briansmith/ring/issues/859).
Some of the types in ruma-events contain types from ruma-signatures which don't implement `Clone` and `PartialEq` because they contain types from *ring* which don't.
I want all event types in ruma-events to implement these traits.
I say this issue is "somewhat blocked" because I could always just modify ruma-events-macros to derive these traits conditionally and then just leave them out for the few types in question, but this would be an unfortunate workaround, so I'd prefer to have the issue solved upstream.
Unfortunately, the issue hasn't received a reply from any maintainers since I opened it a few weeks ago.
No hard feelings—that's how open source works sometimes.

## Rust at large

The big news in Rust since the last update is that [Rust 1.36 was released](https://blog.rust-lang.org/2019/07/04/Rust-1.36.0.html), and it includes stabilization of the `Future` trait, one of the long-awaited building blocks for first-class async support in Rust.
As readers probably already know, the biggest reason for Ruma's development hiatus is waiting for async networking in Rust to mature, and this is one of the final pieces of foundational support we've been waiting for.
The remaining pieces are `async`/`await` syntax, which is expected in either the next version or the one following it, and finally, waiting for important libraries like Hyper and Tokio, as well as web frameworks, to adopt the new stuff.
I also consider [support for `impl Trait` in traits](https://github.com/rust-lang/rfcs/pull/2071) to be an important feature that is not yet supported, but at this point Ruma doesn't seem to need this, so while it's a major missing component of Rust's async support, it doesn't seem likely to block Ruma development.

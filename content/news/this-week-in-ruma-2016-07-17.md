+++
title = "This Week in Ruma"
date = 2016-07-17
extra.author = "Jimmy Cuadra"
+++

Ruma has a new logo!
You can see it on the [home page](/), the [GitHub organization](https://github.com/ruma), and the [Twitter account](https://twitter.com/ruma_io).
For a few weeks I've been experimenting with implementing additional parts of the room creation API, and have learned a lot about how I will approach it, but nothing has landed on master yet.
Some of my work has resulted in new issues for the spec, detailed below.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Following the new version of the spec which provides formal definitions of Matrix IDs, this new crate was added to the Ruma organization on GitHub to isolate the logic for Matrix IDs.

## Notable changes to [ruma.dev](https://github.com/ruma/ruma.github.io)

* Add new logo to the home page.

## Matrix at large

* A new stable version of the client-server specification was released: r0.2.0.
  Notable improvements include an explicit licensing of the spec and a formal definition of Matrix ID grammar.
  The [blog post](https://matrix.org/blog/2016/07/14/client-server-spec-r0-2-0-released/) has links to more.
* [SPEC-429](https://matrix.org/jira/browse/SPEC-429): Create room API: details of handling initial_state.
  This issue will move important details currently only in the implementation of Synapse into the spec itself.

## Rust at large

* [rustup.rs#586](https://github.com/rust-lang-nursery/rustup.rs/pull/586): Allow any toolchain to be specified as the default during rustup installation.
  Once this is released, it will unblock [docker-ruma-dev#1](https://github.com/ruma/docker-ruma-dev/issues/1), which will allow for the version of nightly Rust used by Ruma to be pinned.

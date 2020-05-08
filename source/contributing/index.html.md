---
title: How to Contribute
---

If you're interested in contributing to the Ruma project, this page offers some pointers on how to get started.

The most significant thing you can do to help the project is to try to build something using it.
Since homeserver development has ended, this means building something like a bot or GUI client using the [ruma-client](https://www.ruma.io/projects/ruma-client/) library.
As you work, you can help by opening issues and/or pull requests on the relevant Ruma libraries as issues come up.
This will help ensure that Ruma is suitable for real-world use cases.

If you are more interested in contributing code to the project without building your own software, there are a couple places you might spend your time.

If you have experience with cryptography and/or C programming, you can work on Rust support for [Olm](https://gitlab.matrix.org/matrix-org/olm), the library that supports end-to-end encryption in Matrix.
It's possible that the maintainers of Olm would be interested in Rust support within Olm itself.
If not, you could work on exposing Olm's C API as safe Rust.
One such project already exists: [olm-rs](https://crates.io/crates/olm-rs).
olm-rs might need some additional help.
If you're very confident in your skills with implementing cryptographic algorithms, you could attempt to port Olm to Rust directly, though it's not clear if this would be possible without any C code at all.

The second major area where code contributions would help would be to work on equivalents of [ruma-client-api](https://www.ruma.io/projects/ruma-client-api/) for the other Matrix APIs (e.g. [federation](https://matrix.org/docs/spec/server_server/latest).)
ruma-client-api is the library that defines the Rust interface for all the HTTP endpoints in the Matrix client-server API.
An equivalent library will eventually be needed for the other Matrix APIs.

GitHub issues across all of Ruma's repositories are tagged with "effort" levels, so looking for issues tagged with "effort/easy" is also a good way to find smaller, entry-level issues to take on.

Lastly, if you want to offer financial support to the developers of Ruma, you can [donate to Ruma on Liberapay](https://liberapay.com/ruma/).

Thank you for your interest in contributing to Ruma!

+++
title = "This Week in Ruma"
date = 2019-06-02
extra.author = "Jimmy Cuadra"
+++

## From the editor

Ruma has largely been on hiatus while we wait for async networking in Rust to mature.
We now have a [project status page](https://ruma.dev/status/) which gives the full story.
Please refer people here if they wonder about the project's activity.

The stabilization of async/await syntax is now on the horizon, so this week I worked on bringing the Ruma homeserver up to date.
I updated all its dependencies to their latest versions, which took a bit of work, primarily due to updating from pre-1.0 Diesel to Diesel 1.4, as well as some breaking changes in ruma-events.
The good news is that the homeserver is now a Rust 2018 edition crate and compiles on stable Rust!
That means that the entire Ruma project is now running on stable Rust.

I made some other relatively minor updates to the other Ruma libraries, adding rustfmt and clippy to their builds and addressing lots of clippy warnings.
Several of the Ruma libraries now have substantially more internal documentation, which should help anyone who wants to work on them in the future.
ruma-client also has some new crate-level documentation which should make it much more friendly to new users.

## Matrix at large

The Matrix team is getting ready to release 1.0 versions of the Matrix specifications.
This is great news, as it means things are going to stabilize.
When this happens, we'll be able to bring the various Ruma libraries up to date without having to worry about any more major changes.
We'll also begin implementing the other APIs (e.g. federation) after the 1.0 specs are released.

## Rust at large

As noted above, there is now an expected date for the stabilization of async/await syntax.
It's expected to become stable with the release of Rust 1.37 in August.
Once this happens, the Rust ecosystem will begin to adopt the new syntax, as well as the new version of futures provided by the standard library.
Eventually, the dust will settle, and we'll be in a good position to choose a new web framework to replace Iron, which is what the Ruma homeserver currently uses but is no longer an active project.

## New contributors

* [Alejandro Domínguez](https://github.com/aledomu)

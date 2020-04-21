+++
title = "This Week in Ruma"
date = 2019-06-16
extra.author ="Jimmy Cuadra"
+++

## From the editor

Work is underway to bring Ruma up to date with [version r0.5.0](https://matrix.org/docs/spec/client_server/r0.5.0) of the Matrix specification.
Starting with the most foundational libraries and working up towards the higher-level ruma-client, this work should be done in the next week or two.
The bulk of the work since the last update has been on [ruma-events](https://github.com/ruma/ruma-events), adding all of the events that were previously missing, and doing a full pass through existing events to make sure our definitions match the specification.

In addition, community members Florian and Luca identified [an issue](https://github.com/ruma/ruma-events/issues/27) regarding the use of Rust's `u64` and `i64` for numeric values and potential interoperability problems with JavaScript.
After some discussion, Ruma team member jplatte created a new crate called [js_int](https://github.com/jplatte/js_int) to address this.
It has already been integrated with ruma-client-api and ruma-events, and will be used for all integer values in Ruma from now on.

## Notable changes to [ruma-api](https://github.com/ruma/ruma-api)

* Released [version 0.8.0](https://github.com/ruma/ruma-api/releases/tag/0.8.0).
  * Simplified the `Error` type.
  * Updated to the latest ruma-identifiers (0.13).

## Notable changes to [ruma-api-macros](https://github.com/ruma/ruma-api-macros)

* Released [version 0.5.0](https://github.com/ruma/ruma-api-macros)
  * Generated documentation now includes the names and descriptions of API endpoints.
  * Updated to the latest ruma-api (0.5).

## Notable changes to [ruma-client-api](https://github.com/ruma/ruma-client-api)

* Integrated the new [js_int](https://github.com/jplatte/js_int) crate to ensure numeric types conform to the requirements stated in the specification.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Added new events and updated existing events to cover everything in version r0.5.0 of the client-server specification.
  Notably, this includes events for end-to-end encryption and push notifications.
* Integrated the new [js_int](https://github.com/jplatte/js_int) crate to ensure numeric types conform to the requirements stated in the specification.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Released [version 0.13.0](https://github.com/ruma/ruma-identifiers/releases/tag/0.13.0)
  * `EventId::hostname` and `EventId::port` now return `Option` because they are only applicable for the original event ID format.
  * All methods named `opaque_id` are now named `localpart`.
  * `EventId` now supports multiple formats according to the different [room versions](https://matrix.org/docs/spec/#room-versions).
  * `RoomVersionId` was added.
  * `DeviceId` and a function for generating a `DeviceId` were added.
* Released [version 0.13.1](https://github.com/ruma/ruma-identifiers/releases/tag/0.13.1)
  * Added support for room version 5 with `RoomVersionId::version_5` and `RoomVersionId::is_version_5`.

## Matrix at large

In the last post I mentioned that Matrix 1.0 was coming soon, and it has now happened!
A hearty congratulations to everyone who works on Matrix!
This is a huge milestone.
You can read the details about Matrix 1.0, as well as the new Matrix.org Foundation, over on the Matrix blog: [Introducing Matrix 1.0 and the Matrix.org Foundation](https://matrix.org/blog/2019/06/11/introducing-matrix-1-0-and-the-matrix-org-foundation).

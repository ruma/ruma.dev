+++
title = "This Week in Ruma"
date = 2016-07-03
extra.author = "Jimmy Cuadra"
+++

Three major milestones happened for Ruma this week!

1.  Support for events, the basic unit of data in Matrix, landed on the master branch.
    This is very important, because it's the foundation for almost all the core functionality of the homeserver.
    The initial implementation of events does not support federation, to keep the scope small, and because the details of federation are still not well specified.
2.  Ruma's [documentation website](https://ruma.dev/docs/) was launched, with its first guide, the [Introduction to Matrix](https://ruma.dev/docs/matrix/), which provides a great explanation of Matrix targeted at non-technical users.
3.  Ruma [reached the top of the Hacker News front page](https://twitter.com/ruma_io/status/749834912077713409).
    Be sure to read the [comment thread](https://news.ycombinator.com/item?id=12028475).

## Notable changes to `ruma`

* Add support for events.
* Add partial support for additional parameters to the room creation endpoint: `name`, `topic`, `preset`, and `invite`.
* Create some of the necessary events when a room is created: `m.room.create`, `m.room.name`, `m.room.topic`, `m.room.history_visibility`, `m.room.join_rules`, and `m.room.member`.

## Notable changes to `ruma-events`

* All event types were restructured to include two generic parameters, one for the primary "content" payload, and one for optional "extra content."
  This was done to support certain events in the specification that have non-standard key-value pairs at the top level of the data structure.
* Remove the `EventKind` trait.
* Add support for custom event types.

## Notable changes to `ruma.dev`

* Add new documentation site and Introduction to Matrix guide. (Contributed in part by Leah Scampoli.)

## New contributors

* [Leah Scampoli](https://github.com/leahscampoli)

## Matrix at large

* [SYN-720](https://matrix.org/jira/browse/SYN-720): Validation of event content from user input

  Note that this is a bug filed against Synapse, not the spec itself.
  This was discovered while working on support for the room creation API endpoint's `initial_state` parameter.
  Ruma will do proper validation of state events created through this mechanism.

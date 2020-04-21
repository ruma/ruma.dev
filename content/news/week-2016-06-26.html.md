+++
title = "This Week in Ruma"
date = 2016-06-26
extra.author ="Jimmy Cuadra"
+++

There was a lot of work on documentation and code this week, but almost nothing landed on master, so unfortunately there is little to show.
An initial draft of the Introduction to Matrix overview document has been pushed to a branch, but a few changes are still planned before it is released.
On Ruma itself, a lot of work happened on a branch (currently unpublished) to add support for events to the system.
Events are the primary object in the Matrix system, so the addition of this foundational layer will open the gates for all the other major features.
The event system is not simple, however, and it's taking some time to figure out a good architecture for data persistence.
Because events are involved in both the client-server and federation APIs, and the federation API has not yet had a stable release, it's very difficult to design the system properly.
One issue (noted below) has been opened on the Matrix spec requesting clarification that may help to decide on a suitable architecture.

## Notable changes to `ruma`

* Add `PUT /directory/room/:room_alias` endpoint. (Contributed by Johannes Oertel.)

## Notable changes to `ruma-events`

* Use generic types for `Event`, `RoomEvent`, and `StateEvent`.
* Add unsigned field to `RoomEvent` and `StateEvent`.
* Add `EventKind` trait.
  (The event kinds are basic events, room events, and state events.
  This trait can be useful to constrain a generic parameter that must be a Matrix event.)

## Matrix at large

* [SPEC-416](https://matrix.org/jira/browse/SPEC-416): Document all event keys shown in examples

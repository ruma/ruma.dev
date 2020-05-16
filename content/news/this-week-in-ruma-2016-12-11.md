+++
title = "This Week in Ruma"
date = 2016-12-11
extra.author = "Jimmy Cuadra"
+++

## From the editor

Another big milestone was reached this week: [ruma-signatures](https://github.com/ruma/ruma-signatures) became the second Ruma crate to be published to crates.io.
ruma-signatures is a stand-alone library for working with digital signatures used by the Matrix system.
It can be used by either client or server code, and is not specific to the Ruma homeserver, so anyone writing clients, servers, bots, or integrations for Matrix can use it.
One feature, the ability to sign Matrix events, is notably absent from this first release, mostly because Matrix's federation specification is still unstable.
However, the library should still be useful as is.
Check out the [documentation](https://docs.rs/ruma-signatures) to learn how to use it.

The release of ruma-signatures also makes it possible to finish the last remaining task in [ruma-events](https://github.com/ruma/ruma-events), which was to update a struct field to use one of the types from ruma-signatures. ruma-events should see its first release to crates.io next week, further expanding Ruma's contribution of independent Matrix libraries for the Rust ecosystem.
In turn, ruma-events's release will unblock [ruma-client-api](https://github.com/ruma/ruma-client-api), which in turn will make it possible to begin implementing [ruma-client](https://github.com/ruma/ruma-client), which will be great for anyone looking to write a Matrix program in Rust.

Back in the Ruma homeserver, there are several pull requests waiting for review, so more API endpoints will be implemented soon!

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Ruma's internal error type's API was improved using the [Into\<Option\> trick](http://www.suspectsemantics.com/blog/2016/11/29/the-into-trick/) by a new contributor.
* Another new contributor fixed a bug in the `GET /_matrix/client/versions` endpoint, and made the crate's manifest consistent with the program's CLI.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* New types were added to support heterogeneous collections of events.
* The types for the _m.room.member_ event now use the `Signatures` type from ruma-signatures.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Released crate version 0.5.0, with supports the new 0.9 release of Diesel.

## New contributors

* [Anurag Soni](https://github.com/anuragsoni)
* [Justin LeFebvre](https://github.com/jstnlef)
* [Johannes Löthberg](https://github.com/kyrias)

And a belated contribution attribution to my coworker and friend, [Ramiro Jr. Franco](https://github.com/rjfranco), who did a bunch of work to get Ruma's website started a while back.

## Call for participation

Last week I included this new section, and intend to include it every week from now on, to highlight ways people interested in the project can contribute.
Writing code is not the only way to contribute.
Adding or improving documentation, doing code review, and participating in discussions are helpful too!

* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[bug\] [Deadlock error while running test suite](https://github.com/ruma/ruma/issues/121)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/ruma/blob/master/STATUS.md) for a list.

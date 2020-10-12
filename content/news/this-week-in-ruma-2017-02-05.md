+++
title = "This Week in Ruma"
date = 2017-02-05
extra.author = "Jimmy Cuadra"
+++

## From the editor

With the recent death of my friend Tamara, and moving to a new home, I haven't been able to give Ruma the attention I would've liked in the last few weeks.
The rest of the Ruma community is still helping to push things forward, and I thank them sincerely for that.
In particular, I have shared commit access to the master branch of most Ruma repositories with top contributors [mujx](https://github.com/mujx) and [farodin91](https://github.com/farodin91), both in recognition of their continued contributions to the project, the trust I have in them now, and my desire to grow the community and not be a blocker for progress on the project when I'm unavailable.
Congratulations and thank you to both of them!

We've had a lot of discussion over a major overhaul to the design of ruma-api.
The discussion began when [Simon Goller](https://github.com/neosam) proposed some code for [the first significant endpoint in ruma-client](https://github.com/ruma/ruma-client/pull/1).
It then continued in the Ruma room on Matrix, [a reddit post](https://www.reddit.com/r/rust/comments/5o89f6/optional_associated_types/), and a series of issues and pull requests against ruma-api:

* [Potential API redesign to better handle endpoints without certain kinds of parameters](https://github.com/ruma/ruma-api/issues/6)
* [Another potential API design merging the existing API with some of Ralith's ideas](https://github.com/ruma/ruma-api/pull/7)
* [Yet another potential API design using generics](https://github.com/ruma/ruma-api/pull/8)
* [Revision of the API based on Ralith's ideas. ](https://github.com/ruma/ruma-api/pull/9)

Right now we are leaning towards that last one being the one we choose, but we still want to try implementing some of ruma-client-api and ruma-client against it to see how well it works.
Feedback and participation in the discussion is most welcome!

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added initial support for user presence.
* ruma's config file can now be indicated with an option to the CLI.

## Notable changes to [ruma-events](https://github.com/ruma/ruma-events)

* Published version 0.4.0, 0.4.1, and 0.5.0 to crates.io.
* Updated serde to 0.9.

## Notable changes to [ruma-identifiers](https://github.com/ruma/ruma-identifiers)

* Published version 0.7.0 and 0.8.0 to crates.io.
* Updated serde to 0.9, regex to 0.2, and url to 1.4.
* Updated diesel to 0.10, though this seems to have caused [a regression](https://github.com/diesel-rs/diesel/issues/562#issuecomment-277229425), and will be fixed soon.

## New contributors

* [Yoann Blein](https://github.com/yblein)

## Call for participation

Interested in getting involved with Ruma?
Here are some good places to start:


Previously featured and still available:

* \[feature\] [Sending a m.room.member event again after changing avatar or displayname](https://github.com/ruma/ruma/issues/157)
* \[feature\] [Add missing documentation](https://github.com/ruma/ruma-client-api/issues/8)
* \[discussion\] [Bikeshed: Module names](https://github.com/ruma/ruma-client-api/issues/10)
* \[discussion\] [Implementing Event storage/search with a timeseries database or a lucene indexed database](https://github.com/ruma/ruma/issues/110)
* \[feature\] [Implement a rate-limiting middleware](https://github.com/ruma/ruma/issues/107)

There are also plenty of API endpoints that still need to be implemented.
Check the [status document](https://github.com/ruma/homeserver/blob/master/STATUS.md) for a list.

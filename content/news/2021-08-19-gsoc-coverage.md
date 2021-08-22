+++
title = "GSoC 2021: API Coverage Final Summary"
date = 2021-08-22
extra.author = "Adam Blanchet"
+++

## Time Flies

It's been 10 weeks already! This year's Google Summer of Code is coming to an
end. I really enjoyed working on this project, which turned out to be very
varied in what parts of Ruma I worked with: I've added endpoints, modified and
added new event types, created new identifier types and worked on macros.

This year for GSoC I had a project of extending Ruma's API coverage. More
specifically, I would complete Ruma's coverage of Matrix's Identity Service API.
On this front, I was successful, and now Ruma has 100% coverage of those
endpoints! I also had plans to implement new MSCs, namely [MSC1946]: Secure
Secret Storage and Sharing and [MSC2785]: Event Notification Attributes and
Actions. Along the way, I would also work on resolving a few issues here and
there, which helped get myself better acquainted with Ruma's codebase.

Working on Ruma was a good learning experience for me. I had an opportunity to
do actual work on a project which is used in the real world. All the while, I
was learning and practicing many skills. Working with git, coding against a
formal specification (and dealing with the problems caused by this). Although I
did learn a lot at University, this was a very useful hands-on experience. And
as a bonus, I got to program in Rust for the whole Summer! Rust is a language I
particularly enjoy using, but which I unfortunately rarely have the opportunity
to use at school. 

## The Final Parts of the Project

The end of my project did not turn out to be as smooth as planned. As mentioned
in the previous blog post. I had originally planned to work on adding support
for Secure Secret Storage and Sharing, introduced by [MSC1946]. Although the
sharing part was possible to implement with the current macros available in
Ruma, storage requires a major refactoring of these macros. This means that
although I was able to do the groundwork for supporting [MSC1946], secret
storage will not be usable until those macros are reworked. 

The reason for all this trouble is that [MSC1946] introduces an event
`m.secret_storage.profile.[key_ID]` where `[key_ID]` is a placeholder for the
ID of a key to be stored. This means there could be any number of event types
possible, instead of the until now predefined set of event types. I thus opened
an [issue] for this to be supported in Ruma. 

Although secret storage will need to wait to be merged, secret sharing has
already been merged. This part of [MSC1946], as its name suggests, allows
clients to share secrets between devices. As such, keys can be exchanged between
devices using the  part of the Matrix Spec introduced by this MSC. In fact,
[`matrix-rust-sdk`] has already implemented [the gossiping of cross signing
keys], building on top of Ruma's implementation of Secret Sharing.

As it wasn't realistic to include the major macro refactor in my GSoC project, I
decided to move onto  [MSC2785: Event notification attributes and actions]. I
had kept this as an extra goal for my project, and seemed to be a good fit for
the situation. Unluckily though, when I read more into the MSC's text, I
realized I would encounter the exact same problem as I had with Secret Storage.
This MSC introduced the event type `m.notifications_profile.<profile>` where
`<profile>` is the name of the profile to store. I still powered ahead,
implementing the different endpoints and events, temporarily setting a fixed
event type name for `m.notifications_profile.<profile>`.  This allowed the
grunt of the work to be done, meaning it would be ready for when Ruma gets
support for variable event names. Although the MSC isn't finalized as of yet,
all the currently laid out endpoints and events have been implemented in a
branch ready to be merged once possible.

Thus there are a couple of pull requests which are blocked and that will be
merged in the future, once variable event type names are supported:

- [Add support for MSC2785: Event notification attributes and actions]
- [Add secret storage]

Finally, I also worked on this issue:

- [Generate From impls for event enums]

To solve this last issue, I decided to learn how to write procedural macros. In
the first half of GSoC, I had created a new `macro_rules!` macro, largely based
on a pre-existing one. As I had very little experience in writing macros, and
zero experience in writing procedural ones, I decided to read a short series of
[blog posts] to get myself up to speed. Once that was done, I got to work: I
added the generation of `From` trait implementations inside the pre-existing
proc-macro code which generate the event enums. I also added a derive
macro for enums created manually. I really enjoyed working on this, which was my
first foray into Rust's procedural macros.

## Recap of PRs for my GSoC

### Start of GSoC with the Identity Service API
- [3PID validity endpoint]
- [3PID bind endpoint]
- [Invitation signing endpoint]
- [Store invitation endpoint]
- [3PID unbind endpoint]\(finished at the end of GSoC)

### Middle of GSoc, implementing MSCs and adding types

- [Add client secret and session identifier types]
- [Add RoomName struct]
- [Update endpoints for Blurhash implementation]
- [Add "knock" feature from MSC2403]
- [Implement reasons for leaving a room]

### End of GSoC

- [Add support for MSC2785: Event notification attributes and actions]  
    \(commit `c556e1c5cb1894a6a357799557b07088deb6bea3`)
- [Add secret storage]  
    \(commit `4eae28643036321c7ad86dc8d887b5790b68092b`)
- [Generate From impls for event enums]



[previous blog post]: https://www.ruma.io/news/gsoc-2021-intro/
[3PID validity endpoint]: https://github.com/ruma/ruma/pull/618
[3PID bind endpoint]: https://github.com/ruma/ruma/pull/621
[Invitation signing endpoint]: https://github.com/ruma/ruma/pull/626
[Store invitation endpoint]: https://github.com/ruma/ruma/pull/631
[3PID unbind endpoint]: https://github.com/ruma/ruma/pull/627
[Add client secret and session identifier types]: https://github.com/ruma/ruma/pull/640
[Add RoomName struct]: https://github.com/ruma/ruma/pull/645
[Update endpoints for Blurhash implementation]: https://github.com/ruma/ruma/pull/650
[Add "knock" feature from MSC2403]: https://github.com/ruma/ruma/pull/657
[Implement reasons for leaving a room]: https://github.com/ruma/ruma/pull/663
[MSC1946]: https://github.com/matrix-org/matrix-doc/blob/master/proposals/1946-secure_server-side_storage.md
[MSC2785]: https://github.com/matrix-org/matrix-doc/blob/rav/proposals/notification_attributes/proposals/2785-notification-attributes.md
[MSC2785: Event notification attributes and actions]: https://github.com/ruma/ruma/issues/509
[Generate From impls for event enums]: https://github.com/ruma/ruma/pull/693
[Add support for MSC2785: Event notification attributes and actions]:https://github.com/ruma/ruma/pull/688
[Add secret storage]: https://github.com/ruma/ruma/pull/687
[blog posts]: https://blog.turbo.fish/proc-macro-basics/
[`matrix-rust-sdk`]:https://github.com/matrix-org/matrix-rust-sdk/issues/296
[issue]: https://github.com/ruma/ruma/issues/686
[the gossiping of cross signing keys]: https://github.com/matrix-org/matrix-rust-sdk/issues/296
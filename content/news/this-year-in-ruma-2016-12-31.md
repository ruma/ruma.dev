+++
title = "This Year in Ruma"
date = 2016-12-31
extra.author = "Jimmy Cuadra"
+++

2016 was a fantastic year for the Ruma project.
Although the project began in 2015, 2016 is the first full calendar year of development on the project and most of the major developments happened this year.
I wanted to take a few moments to review what we've achieved, and what's been going on in the Matrix and Rust communities as well.

As a developer with many previous open source projects, I've been amazed at the amount of interest in the project and the number of people who have contributed significant portions of the current code base.
I'm used to flying solo, but Ruma has very quickly grown into a group effort of which I am only one member.
As of the end of 2016, Ruma has 11 people who have contributed commits to one of our repositories.
This does not include people who have opened issues or the more than 250 members of [#ruma:matrix.org](https://matrix.to/#/#ruma:matrix.org) who have participated in discussions, asked questions, and generally shown support of or interest in the project.

I particularly want to mention and thank [mujx](https://github.com/mujx) and [farodin91](https://github.com/farodin91), who have contributed substantial amounts of code and functionality, including some of the more difficult APIs.
A while back I invited both of them to join the [Ruma organization's members](https://github.com/orgs/ruma/people) to acknowledge their work and the importance of their involvement in the project.
Ruma would simply not be nearly as far along as it is without their help.
Thank you both!

While the [0.1.0 release](https://github.com/ruma/ruma/milestone/1) of the Ruma homeserver did not quite make it in time for 2016, we got very close, and I expect to see it in the beginning of 2017.
It may seem that not much work was done if we were able to go the whole year without a release, but it's important to recognize that Ruma is more than just the homeserver.
We're developing several separate Rust crates covering various functionality of the Matrix system, all of which will be used in the homeserver itself.
Four of the Ruma crates were published to crates.io in 2016.
It's been a goal from the beginning to extract as much independently useful functionality as possible from the homeserver so that developers have a great collection of libraries for developing Matrix applications in Rust.
We want to see Matrix succeed, and I think supporting the wider Matrix community with good development tools will be just as important as the homeserver in that regard.

Along with supporting Matrix on the software development side, another of Ruma's goals is to help improve the Matrix specification.
Prior to Ruma, the reference implementation, Synapse, was the only real attempt to implement the entire spec.
Because much of the spec is derived from the behavior of Synapse, there are many places where the spec was unclear or even incorrect.
Having a new homeserver implementation driven by the spec helps the Matrix team clarify, correct, and improve many details all across the specification.
The team has mentioned that we will be seeing the r0.3.0 version of the spec sometime in the next few weeks, and we're excited to see the new improvements.

Matrix itself has been growing in usage and becoming a more serious contender among the choices for modern messaging in 2016.
The flagship web-based Matrix client Vector came out of beta and was rebranded as [Riot](https://riot.im/), bringing with it clients for desktop computers, iOS, and Android, as well.
Riot has been very well received and although still under heavy development, shows that there is a bright future for messaging that gives power and control back to users.
At the end of the year, Riot's long-awaited end-to-end encryption feature went into beta.
Although there still some bugs and usability issues to work out, the beta is very usable.
I've been using it myself since the beta was announced with success.
The importance of an open end-to-end encrypted messaging system cannot be overstated.
The imminent r0.3.0 version of the spec will include all the new APIs for encryption key management that were added to Synapse to support end-to-end encryption.

Rust has seen an incredible amount of activity in 2016 as well.
Since there have already been many other articles on the topic, I will just mention that it's a goal of Ruma to help increase interest and adoption of Rust, just like Matrix.
We want to be another name on the growing list of examples of Rust being used for high quality, production-ready software.
We want more people to learn what a joy Rust is to write, how well the ecosystem of tools and libraries work, and how involved and helpful the community is.
For the language itself, we want to help push more of the useful unstable features into stable Rust.
Most significantly, we've seen that happen this year with the impending stabilzation of [Macros 1.1](https://github.com/rust-lang/rfcs/pull/1681).
Ruma currently builds only on nightly Rust, and the most significant reason for that was our need to use the "custom derive" feature for both Serde (serialization) and Diesel (database ORM).
I wrote a blog post on my personal blog about my experiences with Rust earlier this year, and that was part of a series of public commentary on the topic that helped the Rust team to prioritize a short-term solution to the problem of needing nightly Rust for the very common task of serialization.
Now, only a few months later, the new system is expected to be stable in the upcoming Rust 1.15 release.
With the stabilization of Macros 1.1, Ruma is getting very, very close to being able to build on stable Rust.
The last remaining unstable feature is [try_from](https://github.com/rust-lang/rfcs/pull/1542).
It's very likely that Ruma will be targeting stable Rust by the end of 2017.

I will close by saying thank you again to all Ruma's contributors, to the whole Ruma community, to the Matrix community, and to the Rust community.
It's very fun and rewarding to be working at the intersection of these two new and exciting technologies, building an application that is sorely needed for safe online communication in our modern age.
Thank you for all the achievements of 2016, and here's to another great year!

&mdash; Jimmy Cuadra, Ruma project leader

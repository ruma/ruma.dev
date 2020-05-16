+++
title = "This Week in Ruma"
date = 2019-07-21
extra.author = "Jimmy Cuadra"
+++

## From the editor

This week I'd like to officially welcome [Jonas Platte](https://github.com/jplatte) as a member of the Ruma team.
Jonas has been involved in the project for a long time and has provided many significant contributions, both via code and via discussions about the project's design.
Jonas is the original author of ruma-gtk, a graphical Matrix client built on ruma-client, which later became [Fest](https://github.com/fest-im/fest), which in turn was forked to create [Fractal](https://wiki.gnome.org/Apps/Fractal).
Thank you very much for all your work, Jonas!

A new addition to the website this week is the [how to contribute](/contributing/) page, which offers an entry point for anyone interested in contributing to the project's software.
Thank you to everyone who has expressed interest in contributing in the past (and for everyone who will in the future!)
Hopefully this guide will help you get started and give you some ideas for how to help.

On several occasions I've been asked if there is a way to donate financially to the project.
I'm happy to report that Ruma now [accepts donations via Liberapay](https://liberapay.com/ruma/).
Donations to the project will be divided amongst team members, which as of today consists of only Jonas and me, but will hopefully grow over time.
In the past I was hesitant to accept donations because I didn't want financial interest to affect (or have the appearance of affecting) my decisions about the project.
I am building Ruma because I think the world needs Matrix, not as a way to support myself.
Being able to share donations to Ruma with other developers makes me much more comfortable with accepting donations.
It serves both to dilute my own financial interest in the project as well as to provide benefit in a way that's more in tune with the project's goals: making the world better for all of us.
For anyone that decides to support the project on Liberapay, I offer my most sincere thanks.

As for the software itself, the main update this week is that the revamp of ruma-events I've been working on for the past month is complete and has been merged into the master branch.
I still need to do one quick pass over everything to be sure I didn't make any obvious mistakes, but once that's done it will be ready for a new release.
As part of this revamp, a new supporting crate, [ruma-events-macros](https://github.com/ruma/ruma-events-macros) also had its first release this week.
Like ruma-api-macros, it's really only used as an internal dependency for the project, and doesn't have much use to other developers directly.
But it could be interesting to look at if you want an example of a real-world procedural macro.

There was also a new release of ruma-api, [version 0.9.0](https://github.com/ruma/ruma-api/releases/tag/0.9.0), which revises the API to support the upcoming futures 0.3, ironically by removing the dependency on futures entirely.
This release also removes the library's dependency on hyper, as it's always been a goal for the foundational Ruma libraries to allow other developers to build Matrix software with other HTTP libraries if they wish.

## Matrix at large

[Riot](https://riot.im/), the flagship Matrix client, [released version 1.3](https://medium.com/@RiotChat/%EF%B8%8Fmessage-editing-%EF%B8%8F-reactions-5cffec8f71a2) this week, which includes the ability to edit sent messages, and to add reactions to messages.
Both of these features are highly requested and bring Riot in line with other high-profile collaboration software.

Other notable news is the announcement to get [Dendrite](https://github.com/matrix-org/dendrite), a Matrix homeserver written in Go, into a state where it can have some practical use for Matrix users.
The first goal is for it to support enough functionality to be used for Matrix bots.
Read more about this announcement on [the lastest This Week in Matrix](https://matrix.org/blog/2019/07/19/this-week-in-matrix-2019-07-19).

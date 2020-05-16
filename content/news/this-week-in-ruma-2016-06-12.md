+++
title = "This Week in Ruma"
date = 2016-06-12
extra.author = "Jimmy Cuadra"
+++

In addition to the bulleted highlights listed below, major work was done this week to help the community get involved in Ruma development.
The Git repository now includes contribution guidelines, as well as a document with a chart detailing all the API endpoints in the Matrix specification and the current status of support for each in Ruma.
Each endpoint in the chart links to a tracking issue on GitHub, offering a place for contributors to announce their interest in working on the endpoint and to discuss implementation.
A few additional issues were added to the issue tracker to give additional ideas for ways people interested in contributing can help.
These issues are listed below in the "contribution opportunities" section.

Lastly, my partner Leah (who works professionally as a technical writer) and I spent most of the weekend working on a new documentation website for Ruma.
The site will include Ruma's user guide, as well as a section dedicated to introducing and explaining the concepts of Matrix.
With the launch of Vector (see "Matrix at large" below) this week, word about Matrix is going to start to spread faster, and Matrix is in dire need of very clear explanations that are targeted at non-technical users.
We are being extremely careful with the content of this Matrix concept documentation, choosing our terminology, analogies, and examples in a way that won't assume too much about the reader's knowledge and won't overload them with buzzwords without explaining what they mean using words and concepts commonly understood by everyone.
I'm really excited to launch this new documentation site because I think it's going to be very effective in helping both technical and non-technical people understand what Matrix is, how it works, and why someone would want to use it.

## Notable changes to `ruma`

* `POST /createRoom`: Add support for the room's initial canonical alias.
* `POST /createRoom`: Add support for setting the room's visibility in the server's public room directory.
* Add support for configuration files in TOML and YAML formats.
* Add CONTRIUBTING and STATUS documents as well as revised README content.

## Notable changes to `www.ruma.io`

* Revised the website's style in preparation for the documenation sub-site.

## New contributors

* [mujx](https://github.com/mujx)

## Contribution opportunities

* [66](https://github.com/ruma/ruma/issues/66): Add test helper for creating a user and returning its access token
* [67](https://github.com/ruma/ruma/issues/67): Create test database and run migrations from Rust

## Matrix at large

Two members of the Matrix team were in San Francisco this week for [Decentralized Web Summit](http://www.decentralizedweb.net/).
The most exciting announcement was that [Vector](https://vector.im/), a slick Matrix client available as a web app, iOS app, and Android app, is now in open beta!
A blog post, [Say Hello To Vector!](https://medium.com/@Vector/say-hello-to-vector-2d33b23a787#.5zf8xd93f) was published alongside the announcement at the conference.
You can try Vector by chatting with us in the [room for Ruma](https://vector.im/beta/#/room/#ruma:matrix.org)!

On Wednesday evening, I met the Matrix team and some other Matrix enthusiasts in the area for dinner near the Internet Archive's office.
It was great to meet everyone in person.
We had some good discussions about Matrix, especially about how to address the risk of spam and abuse in the Matrix network using a reputation system.

New issues opened for the Matrix specification:

* [SPEC-409](https://matrix.org/jira/browse/SPEC-409): Enumerate all events created when a room is created
* [SPEC-411](https://matrix.org/jira/browse/SPEC-411): Directory list API missing from the spec

  (I later learned this was already reported in [SPEC-370](https://matrix.org/jira/browse/SPEC-370): We need to spec the new /directory/room/list API)

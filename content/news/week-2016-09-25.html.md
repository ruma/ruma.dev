+++
title = "This Week in Ruma"
date = 2016-09-25
extra.author ="Jimmy Cuadra"
+++

On Friday, I live streamed myself working on Ruma for the first time.
I tweeted about it from my [personal account](https://twitter.com/jimmycuadra) and mentioned it in [#ruma:matrix.org](https://matrix.to/#/#ruma:matrix.org), but otherwise didn't publicize it.
A few people watched and helped work out the kinks with audio and video quality.
(Thank you to those who watched!)
I walked through the API endpoint for creating message events, explaining more or less line by line how the code works, then worked on implementing the API endpoint for creating state events.
The people who watched gave me good feedback, and I had a good time doing it, so I think I'll start to stream some of my Ruma development regularly.
It will be at 1:00 PM Pacific Time on my [Twitch channel](https://www.twitch.tv/jimmy_cuadra).
I will start tweeting about it from [Ruma's Twitter account](https://twitter.com/ruma_io) to remind everyone.
I'd love to get some questions during the stream, so if you're interested in learning about Matrix, Rust, or both, please come watch and tell me what you want to know!

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added initial support for the state event creation API endpoint.
* Filled in missing functionality and fixed a few issues with the room alias API endpoints, which checks those off the list completely.
* A new contributor is working on the API endpoint for joining a room, and in the process added a new Iron middleware for extracting a `ruma_identifiers::RoomId` from the URL path parameter wherever it's required.
* A small quality of life fix: `script/cargo` now passed the value of `RUST_LOG` to the Docker environment when developing.
* The project's README now includes some more information about how to determine which version of nightly Rust Ruma is built against for those not using Docker for development.

## New contributors

* [Jan Jansen](https://github.com/farodin91)

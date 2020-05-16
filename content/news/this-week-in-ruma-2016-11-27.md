+++
title = "This Week in Ruma"
date = 2016-11-27
extra.author = "Jimmy Cuadra"
+++

## From the editor

It's been several weeks since I published an update to This Week in Ruma.
I've been out of town for a lot of that time and too busy to give Ruma the time it deserves.
This hasn't stopped Ruma's contributors from moving forward, however!
There are several pull requests in various stages of completion and review.
It will likely to continue to be on the quiet side for Ruma through the remainder of the year, but don't worry.
The project is not going away.

## Notable changes to [ruma](https://github.com/ruma/ruma)

* Added support for user profiles.
* New room aliases now properly generate an m.room.aliases event.
* The construction of API endpoints and the various middleware they use has been refactored to use a trait and a macro.

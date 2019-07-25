---
title: Project Status
---

Ruma is in early development and only certain components of it are currently in a state of practical usability.
The client-side components are more likely to be useful in building software that works with Matrix at this point.
The homeserver is still in early stages and is not usable for anything but further development and testing.
To see details of which APIs are supported in the homeserver, see the [status document](https://github.com/ruma/ruma/blob/master/STATUS.md).

Ruma development is active in general, but development of the homeserver component is currently on hold.
The team has been waiting for some specific developments in both Matrix and Rust.

For Matrix, the primary developments we were waiting for were stable releases of each Matrix specification.
As of this writing (May 2019) this has happened, and development of Ruma is no longer blocked by Matrix in a significant way.

For Rust, the primary developments we're waiting for are related to asynchronous networking.
This work has been a long time coming, and the changes in the language itself are expected to reach the stable channel in the summer of 2019.
The Ruma project may need to wait longer for the larger Rust ecosystem to adopt these changes before continuing development in earnest.

The development hiatus primarily affects the homeserver component of the project.
The Matrix client and related libraries have continued, albeit at a slower pace.

For more detail about the status of asynchronous programming features in Rust, see [Are We Async Yet?](https://areweasyncyet.rs/)

For a detailed breakdown of what the Ruma project is waiting for, see [Things blocking or slowing progress of Ruma](https://github.com/ruma/ruma/issues/189).
This is considered the official tracking issue for the project status.
You may wish to subscribe to the issue for updates.

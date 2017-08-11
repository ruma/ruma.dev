---
title: Ruma - ruma
project: ruma
---

`ruma` is the entire Ruma homeserver compiled into a single executable.
It serves Matrix's client-server API, federation API, and extra APIs which are specific to Ruma and not part of the Matrix specification.

`ruma` is intended to be used for small-scale deployments such as personal homeservers for individuals or small groups of people.
For large-scale deployments, it's recommended to use the separate executables provided for each component of the homeserver so they can be scaled independently based on demand.

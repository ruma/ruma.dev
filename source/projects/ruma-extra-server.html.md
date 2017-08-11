---
title: Ruma - ruma-extra-server
project: ruma-extra-server
repo: ruma
---

`ruma-extra-server` is the component of the Ruma homeserver that serves APIs that are specific to Ruma and not part of the Matrix specification.

`ruma-extra-server` is intended for large-scale deployments when it is desirable to scale this component independently from the other components of the homeserver.
For small-scale deployments, it's easier to use the all-in-one `ruma` executable.

---
title: Ruma - ruma-federation-server
project: ruma-federation-server
---

`ruma-federation-server` is the component of the Ruma homeserver that servers Matrix's server-server API, which is used by other homeservers in the Matrix network to replicate data.

`ruma-federation-server` is intended for large-scale deployments when it is desirable to scale this component independently from the other components of the homeserver.
For small-scale deployments, it's easier to use the all-in-one `ruma` executable.

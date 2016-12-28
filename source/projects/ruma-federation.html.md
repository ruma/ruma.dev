---
title: Ruma - ruma-federation
project: ruma-federation
---

`ruma-federation` is a component of the Ruma homeserver.
It servers Matrix's server-server API, which is used by other homeservers in the Matrix network to replicate data.
This is the basis of Matrix's federation feature.
It does not make sense to run `ruma-federation` by itself.
It should be run alongside [ruma](/projects/ruma/), which provides the primary client-server API.
When both components are run together, the separation of the two APIs into two applications allows them to be horizontally scaled separately based on demand.

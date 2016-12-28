---
title: Ruma - ruma
project: ruma
---

`ruma` is the primary component of the Ruma homeserver.
It serves Matrix's client-server API, which is what Matrix clients of all kinds use to communicate with their homeserver.
When run by itself without [ruma-federation](/projects/ruma-federation/), a user is able to run a completely private Matrix homeserver that doesn't participate in federation at all.
Even when both components are run together, the separation of the two APIs into two applications allows them to be horizontally scaled separately based on demand.

+++
title = "ruma-events"
extra.crate = "ruma-events"
+++

`ruma-events` contains serializable types for the events in the Matrix specification that can be shared by client and server code.
Its main users are `ruma-client-api` and `ruma-appservice-api`.
`ruma-events` should be used whenever a developer needs to work with Matrix events as Rust values.

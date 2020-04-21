+++
title = "ruma-client"
extra.crate = "ruma-client"
+++

`ruma-client` is a high-level client for Matrix's client-server API.
It implements the client side of the request and response types defined in [ruma-client-api](/projects/ruma-client-api/), which in turn implements a generic Matrix API interface defined in [ruma-api](/projects/ruma-api/).
`ruma-client` is the library that most developers writing applications that integrate with Matrix will need, since it is the one that makes requests to the primary homeserver API.

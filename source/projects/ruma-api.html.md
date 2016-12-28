---
title: Ruma - ruma-api
project: ruma-api
releases: https://crates.io/crates/ruma-api
documentation: https://docs.rs/ruma-api
---

`ruma-api` contains core types used to define the requests and responses for each endpoint in the various Matrix API specifications.
[ruma-client-api](/projects/ruma-client-api/) implements `ruma-api`'s interface for Matrix's client-server API.
In the future, there will be additional crates that implement `ruma-api`'s interface for the other APIs in the Matrix specification.

---
title: Ruma - ruma-signatures
project: ruma-signatures
releases: https://crates.io/crates/ruma-signatures
documentation: https://docs.rs/ruma-signatures
---

`ruma-signatures` provides functionality for creating digital signatures according to the Matrix specification.
Digital signatures are used by Matrix homeservers to verify the authenticity of events in the Matrix system, as well as requests between homeservers for federation.
`ruma-signatures` should be used whenever a developer needs to create or verify a signature according to the specification, or simply when using a Rust type that includes a Matrix digital signature as one of its fields.

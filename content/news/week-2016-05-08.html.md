+++
title = "This Week in Ruma"
date = 2016-05-08
extra.author ="Jimmy Cuadra"
+++

## From the editor

I'm back from my vacation to Montreal and Quebec City (which are lovely and you should visit) and working on Ruma again!
Although development this past week was hindered a bit by another round of breaking changes to the Rust compiler's `libsyntax` crate, which affects Ruma's use of `serde` and `diesel`, there have been a few changes to Ruma and some movement on the Matrix specification.

For anyone interested in following This Week in Ruma regularly, it is now available via an [Atom feed](/news/feed.atom).

## Notable changes to `ruma`

* New CLI subcommand, `ruma secret`

  This new subcommand generates and prints a secure random value suitable as the `macaroon_secret_key` in the Ruma config file.
  This value is used as the secret key for creating user access tokens using [Macaroons](https://github.com/cryptosphere/rust-macaroons).

* Interactive authentication removed from `/register`

  At least for now, user registration will not require any sort of external credential verification.
  This area of the spec is currently less stable, so implementing it will wait until it makes more sense.

* Simplified structure for crates, modules, and tests

  The integration tests have been moved into the `src` directory so that it's not necessary to split `ruma` into a binary and a library just so the integration tests can link to the library.
  This makes Cargo.toml and various `cargo` commands simpler.

* Swagger data source

  By default, `ruma` now serves a JSON structure at `/ruma/swagger.json` that can be loaded by [Swagger UI](https://github.com/swagger-api/swagger-ui) to display the full Matrix client-server specification that will eventually be implemented by Ruma.

## Matrix at large

There has been a bunch of activity on the spec recently.
It appears that the Matrix team is preparing for a stable 1.0 release of the client-server API spec.
A branch I worked on for the spec landing page of the specification was also merged.
Those changes improve the organization of the information to make several things clearer to first-time readers.

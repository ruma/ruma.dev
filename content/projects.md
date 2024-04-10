+++
title = "Projects using Ruma"
+++

This page should list most of the projects that are using Ruma. We're happy to
add yours if you tell us about it on
[this issue](https://github.com/ruma/ruma.github.io/issues/19).

*Note: The site that was previously at this URL, containing an overview of the
libraries that make up Ruma, is available [here](/docs/crates/).*

## matrix-rust-sdk

[matrix-rust-sdk] (or just `matrix-sdk` [on crates.io][matrix-sdk]) is a
high-level client library on top of the Ruma libraries. There are a few client
applications built with it:

* [Fractal]: A client for GNOME
* [iamb]: A terminal-based client with Vim keybindings
* [RumaTui]: A command-line client
* [retrix]: A lightweight client built with [iced]
* [Weechat-Matrix]: A plugin for weechat that adds Matrix support to it
* [matrix-send]: A non-interactive command-line client

Additionally, some bots are also being built with it:

* [hebbot]: A Matrix bot which can generate "This Week in X" like blog posts
* [tenebrous-dicebot]: Matrix dice rolling bot with support for the Chronicles of Darkness 2E Storytelling System and Call of Cthulhu.
* [MRSBFH]\: Matrix-Rust-SDK-Bot-Framework-Helper
* [Timetracking-Bot by Famedly]: A bot for tracking work times, uses MRSBFH

[matrix-rust-sdk]: https://github.com/matrix-org/matrix-rust-sdk#matrix-rust-sdk
[matrix-sdk]: https://crates.io/crates/matrix-sdk

[Fractal]: https://gitlab.gnome.org/World/fractal
[iamb]: https://iamb.chat
[RumaTui]: https://github.com/DevinR528/RumaTui#readme
[retrix]: https://git.graven.dev/amanda/retrix
[iced]: https://github.com/hecrj/iced#readme
[Weechat-Matrix]: https://github.com/poljar/weechat-matrix-rs#readme
[matrix-send]: https://github.com/tilosp/matrix-send-rs#readme

[hebbot]: https://github.com/haecker-felix/hebbot
[tenebrous-dicebot]: https://git.agnos.is/projectmoon/tenebrous-dicebot
[MRSBFH]: https://github.com/MTRNord/mrsbfh#readme
[Timetracking-Bot by Famedly]: https://gitlab.com/famedly/bots/timetracking

## Conduit

[Conduit] is a homeserver implementation built with Ruma. It implements most
parts of the client-server API, and also has partial support for
federation<sup>\*</sup>. It tries to be easy to install, fast and robust.

<sup>\*</sup> as of 2021-11-20

[Conduit]: https://conduit.rs/

## Others

These are smaller projects depending on Ruma instead of matrix-rust-sdk for
various reasons:

* [sparky8251/matrix-bot]: "a simple matrix bot aimed at medium to large
  projects that span many chat rooms and many active repos looking for more
  options than the official matrix bots can provide"
* [DSN Traveller]: A bot that joins all rooms it can find through public room
  lists and room (alias) links posted in messages to allow analyses of the
  network at large
* [Rumraisin]: A small appservice for tracking your favourite RSS/Atom feeds
  using Matrix.

[sparky8251/matrix-bot]: https://github.com/sparky8251/matrix-bot#readme
[DSN Traveller]: https://dsn.tm.kit.edu/matrix/traveller/explained.html
[Rumraisin]: https://zluudg.gitlab.io/rumraisin/

## Incomplete

These projects are incomplete and not actively being worked on:

* [Daydream]: A client based on matrix-rust-sdk (one variant based on
  [Yew](https://yew.rs/docs/en/) and one based on
  [Druid](https://github.com/linebender/druid#druid))
* [Maelstrom]: A homeserver designed to have a pluggable storage engine, to be
  scalable and light on resources
* [synadminctl]: A synapse admin API command line interface
* [matrix-rocket.chat bridge]: What the name says

[Maelstrom]: https://github.com/maelstrom-rs/maelstrom#readme
[Daydream]: https://github.com/daydream-mx?type=source
[synadminctl]: https://github.com/florianjacob/synadminctl#readme
[matrix-rocket.chat bridge]: https://github.com/exul/matrix-rocketchat#readme

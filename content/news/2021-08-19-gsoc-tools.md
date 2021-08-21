+++
title = "GSoC 2021: Tooling Final Summary"
extra.author = "Devin Ragotzy"
+++

What a fun summer! I was hoping I would become more a part of the Rust community this year, and
I think I have. I learned how to open an MCP (Major Change Proposal), which is a process that
language and implementation changes not big enough for an RFC go through. I am involved in an
effort to create a new plugin lint system similar to [Clippy]. I made a few more contributions
to Clippy, fixing old lints and adding a new one. I am happy to become more involved in Ruma and
Rust and plan to finish all my works in progress.

Since I am working with more people than just my mentor, making progress seems to take longer.
I am glad for the experience working with multiple people, learning how to follow directions from
multiple people. You have to be able to write code in the "voice" of someone else or at least
meet them halfway. I know that this is an invaluable skill that will serve me well in my career.
Thank you to [@jplatte][] and [@iinuwa][] for all the help and encouragement!

## Starting on Automation

- [cargo-sort][DevinR528/cargo-sort] Some of the work on this happened before GSoC started but not all
(I'm proud of this crate)
  - [cargo-sort work during GSoC][cargo-sort-work]
- [nonstandard-macro-braces][rust-lang/rust-clippy#7299] Lint for consistent macro brace usage
- [import-renaming][rust-lang/rust-clippy#7300] Lint to enforce import renaming
- [disallow-types][rust-lang/rust-clippy#7315] Lint to ban specified types
- [fix FP][rust-lang/rust-clippy#7431] Fix false positive in macro brace lint

## Second Half

- [module layout style][rust-lang/rust-clippy#7543] Clippy now has the ability to lint on the module
layout chosen
- [non_exhaustive reachable lint][rust-lang/rust#86809] I've been busy continuing work on this pull
request
- [plugin lint design][lint/design] I spent a few days working with a group of people designing a new 
linter that could load third-party lints
- [plugin lint discussions][lint/discussions] Very insightful experience into the open-source design
process

## Progress on Automated Checks for Ruma

- [ruma/ruma#221] Has almost been closed; only one item remains

I think the work on the linter will be __extremely__ valuable if we can get it working. The ability
to write crate-specific lints will be a huge help to library writers and users. I can imagine many such
lints for a complex library like Ruma. I am excited to be involved!

[ruma/ruma#221]: https://github.com/ruma/ruma/issues/221
[Clippy]: https://github.com/rust-lang/rust-clippy
[rust-lang/rust-clippy#7543]: https://github.com/rust-lang/rust-clippy/pull/7543
[rust-lang/rust#86809]: https://github.com/rust-lang/rust/pull/86809
[DevinR528/cargo-sort]: https://github.com/DevinR528/cargo-sort
[cargo-sort-work]: https://github.com/DevinR528/cargo-sort/compare/main@%7B2021-06-07%7D...main

[rust-lang/rust-clippy#7299]: https://github.com/rust-lang/rust-clippy/pull/7299
[rust-lang/rust-clippy#7300]: https://github.com/rust-lang/rust-clippy/pull/7300
[rust-lang/rust-clippy#7315]: https://github.com/rust-lang/rust-clippy/pull/7315
[rust-lang/rust-clippy#7431]: https://github.com/rust-lang/rust-clippy/pull/7431

[lint/design]: https://github.com/rust-linting/design
[lint/discussions]: https://github.com/rust-linting/design/discussions

[@jplatte]: https://github.com/jplatte
[@iinuwa]: https://github.com/iinuwa

# Swift Primitives

Atomic building blocks for Swift — Layer 1 of the [Swift Institute](https://github.com/swift-institute) ecosystem.

## What this is

Small, composable packages that each model a single domain: buffer, memory, time, geometry, parsing, rendering, async coordination, and many more. Layer 1 depends on nothing outside the Swift standard library — every package is Foundation-free, strictly memory-safe, `~Copyable`-aware, and uses typed throws. Everything in the higher layers of the ecosystem composes against these packages.

## Start here

| Package | What it gives you |
|---|---|
| [swift-tagged-primitives](https://github.com/swift-primitives/swift-tagged-primitives) | Phantom-typed value wrappers for zero-cost type safety |
| [swift-async-primitives](https://github.com/swift-primitives/swift-async-primitives) | Raw async coordination — Channel, Broadcast, Semaphore, Mutex, Barrier, Promise — with `~Copyable` support and typed-throws cancellation |
| [swift-memory-allocation-primitives](https://github.com/swift-primitives/swift-memory-allocation-primitives) | Allocators that carve a memory region into slots — passthrough System, bump Arena, O(1) fixed-size Pool |
| [swift-builder-primitives](https://github.com/swift-primitives/swift-builder-primitives) | A shared, macro-free result-builder grammar for declarative element collection |
| [swift-buffer-primitives](https://github.com/swift-primitives/swift-buffer-primitives) | Buffer types for working with contiguous memory |
| [swift-render-primitives](https://github.com/swift-primitives/swift-render-primitives) | The core render abstractions behind the ecosystem's HTML, SVG, and PDF output |

## Browse everything

The [repositories tab](https://github.com/orgs/swift-primitives/repositories) lists every package with its description. Narrow it down:

[buffer](https://github.com/orgs/swift-primitives/repositories?q=buffer) · [memory](https://github.com/orgs/swift-primitives/repositories?q=memory) · [time](https://github.com/orgs/swift-primitives/repositories?q=time) · [geometry](https://github.com/orgs/swift-primitives/repositories?q=geometry) · [parser](https://github.com/orgs/swift-primitives/repositories?q=parser) · [render](https://github.com/orgs/swift-primitives/repositories?q=render) · [async](https://github.com/orgs/swift-primitives/repositories?q=async) · [machine](https://github.com/orgs/swift-primitives/repositories?q=machine)

Packages are ordered in dependency tiers — Tier 0 depends only on the standard library; higher tiers compose lower ones. The full ordering is documented in [Primitives Tiers](https://github.com/swift-primitives/swift-primitives/blob/main/Documentation.docc/Primitives%20Tiers.md).

## Conventions

Every package in this organization adheres to a shared set of conventions:

- **Nest.Name naming** — no compound type names; `File.Directory.Walk`, never `FileDirectoryWalk`.
- **Typed throws end-to-end** — `throws(Domain.Error)`, not `any Error`.
- **One type per file** — predictable navigation, minimal merge conflicts.
- **`~Copyable` by default** — types opt into `Copyable`, not out of it.
- **`~Escapable` for views** — pointer-based views cannot outlive their base.
- **Foundation-free** — no `import Foundation` anywhere in Layer 1.
- **Strict memory safety** — enabled on every target; every unsafe-pointer site carries explicit `unsafe` vocabulary.
- **Multi-target per package** — Core + variants + umbrella; import the narrow variant you need.

Each package ships with a DocC catalog documenting these at type granularity.

## How to use a package

Each package is a separate Swift Package Manager package with its own repository — add the one you need directly:

```swift
dependencies: [
    .package(url: "https://github.com/swift-primitives/swift-tagged-primitives.git", from: "0.1.0")
]
```

See each package's README for current products, platforms, and umbrella-vs-variant choices.

## Status

Public alpha — packages are stabilising toward a first coordinated milestone.

Maintained by [Coen ten Thije Boonkkamp](https://github.com/coenttb) — contributions welcome via pull request.

## License

All packages in this organization use the Apache License 2.0.

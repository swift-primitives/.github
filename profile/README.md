# swift-primitives

Atomic building blocks for the Swift Institute ecosystem — Layer 1.

## What this is

`swift-primitives` is the foundation layer of the
[Swift Institute](https://github.com/swift-institute) five-layer architecture.
It hosts 60+ small, composable packages that model a single domain each:
buffer, geometry, algebra, memory, kernel, time, input, index, ordinal,
cardinal, and many more. Every package is Foundation-free, strictly
memory-safe, `~Copyable`-aware, and uses typed throws.

Higher layers depend downward-only: L2 (standards) depends on L1, L3
(foundations) depends on L1 and L2. L1 depends on nothing outside itself and
the Swift standard library.

## Layer position

| Layer | Organization | Role |
|-------|--------------|------|
| 1 | **[swift-primitives](https://github.com/swift-primitives)** (this org) | Atomic building blocks |
| 2 | [swift-standards](https://github.com/swift-standards) + per-authority orgs | Specification implementations (RFC, ISO, W3C, …) |
| 3 | [swift-foundations](https://github.com/swift-foundations) | Composed building blocks — IO, HTML, CSS, SVG, PDF, networking |
| 4 | Components | Opinionated assemblies — planned |
| 5 | Applications | End-user systems — planned |

## Conventions

Every package in this organization adheres to a shared set of conventions,
applied at code review time:

- **Nest.Name naming** — no compound type names; nested accessors over
  compound methods. `File.Directory.Walk`, never `FileDirectoryWalk`.
- **Typed throws end-to-end** — `throws(Domain.Error)`, not `any Error`.
- **One type per file** — predictable navigation, minimal merge conflicts.
- **`~Copyable` by default** — types opt INTO `Copyable`, not out of it.
- **`~Escapable` for views** — pointer-based views cannot outlive their base.
- **Foundation-free** — no `import Foundation` anywhere in L1.
- **Strict memory safety** — `.strictMemorySafety()` enabled on every target;
  every unsafe-pointer site carries explicit `unsafe` vocabulary.
- **Multi-target per package** — Core + variants + umbrella; consumers can
  import the narrow variant they need.

Each package ships with a DocC catalog documenting the above at type granularity.

## Where to go next

| If you want to... | Go to |
|-------------------|-------|
| Read the ecosystem overview | [swift-institute.org](https://swift-institute.org) |
| Browse the primitives monorepo | [swift-primitives/swift-primitives](https://github.com/swift-primitives/swift-primitives) |
| Consume a single primitives package | Find it in the list of repositories on this page and add it to your `Package.swift` |
| Browse design rationale | [swift-institute/Research](https://github.com/swift-institute/Research) |
| Report a security vulnerability | See the [security policy](https://github.com/swift-primitives/.github/blob/main/SECURITY.md) |
| Report an issue or contribute | Open an issue or pull request on the relevant package repository |

## Status

Initial public alpha. Individual packages are being released repository by
repository; the layer as a whole is stabilising toward a first coordinated
milestone.

Maintained by [Coen ten Thije Boonkkamp](https://github.com/coenttb) as a
sole-contributor project. Contributions via pull request are welcome.

## License

All packages in this organization use the Apache License 2.0.

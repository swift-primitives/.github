// parent: https://raw.githubusercontent.com/swift-institute/.github/main/Lint.swift
// ===----------------------------------------------------------------------===//
// Tier 2 — swift-primitives org-specific canonical Lint configuration.
//
// Mirrors the prior swift-primitives-lint-canonical Swift package (now
// retired in favor of the file-based canonical pattern at
// swift-primitives/.github/Lint.swift). Activates the R1–R5 cohort:
//
//   R1 — cardinal_count_minus_one        (Cardinal.count - 1 anti-pattern)
//   R2 — cardinal_zero_one_constructor   (Cardinal.zero / .one constructor)
//   R3 — chained_rawvalue_access         (.rawValue chained > 1 deep)
//   R4 — bitpattern_rawvalue_chain       (UInt(bitPattern:) + .rawValue)
//   R5 — unchecked_call_site             (`__unchecked:` constructor)
//
// Inherits from Tier 1 (swift-institute/.github/Lint.swift) via the
// `// parent:` directive at the top of this file. The linter's
// parent-chain resolver fetches the raw GitHub URL on each lint run
// (curl, with per-process memoization keyed on the URI). Failure to fetch
// falls back to consumer-only configuration per the supervisor block —
// the chain is best-effort.
// ===----------------------------------------------------------------------===//

import Linter

let manifest = Lint.Manifest(
    enabled: [
        "unchecked_call_site",                 // R5
        "cardinal_count_minus_one",            // R1
        "cardinal_zero_one_constructor",       // R2
        "chained_rawvalue_access",             // R3
        "bitpattern_rawvalue_chain"            // R4
    ]
)

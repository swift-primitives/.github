# Security Policy

## Reporting a vulnerability

If you believe you have discovered a security vulnerability in any package in
the `swift-primitives` organization, report it privately rather than opening a
public issue.

The reporting channel is GitHub's private vulnerability reporting:

- **[Open a security advisory](https://github.com/swift-primitives/swift-primitives/security/advisories/new)**

This routes the report directly to the maintainer and keeps the details private
until a fix is coordinated. Please include:

- A description of the issue and its impact
- Steps to reproduce (minimal example where possible)
- The Swift toolchain version and platform on which you observed the issue
- Any suggested mitigations

## Response

Reports are acknowledged and triaged by the maintainer. A coordinated disclosure
timeline is agreed with the reporter. Reporters receive credit in the release
notes for the fix unless they prefer to remain anonymous.

## Scope

This policy applies to every repository in the
[swift-primitives](https://github.com/swift-primitives) organization — the
Layer 1 primitives layer of the Swift Institute ecosystem. For the broader
ecosystem security policy, see
[swift-institute/.github/SECURITY.md](https://github.com/swift-institute/.github/blob/main/SECURITY.md).

For vulnerabilities in dependencies (Swift standard library, toolchain, external
packages), report to the upstream project directly.

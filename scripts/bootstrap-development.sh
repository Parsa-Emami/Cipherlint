#!/usr/bin/env bash
set -euo pipefail

# Run from the repository root after verifying the GitHub owner/module namespace.
# This script intentionally performs source bootstrap only; infrastructure credentials are never generated.

mkdir -p crates
cargo new --bin crates/cipherlint-cli
cargo new --lib crates/cipherlint-core
echo "Make the Rust CLI authoritative first. Bootstrap Laravel/React only after the CLI golden contract passes."

printf "\nBootstrap command sequence completed. Review generated files, pin/lock dependencies, then run repository validation before commit.\n"

#!/usr/bin/env bash
set -euo pipefail

npm install -g @openai/codex
rustup toolchain install nightly
cargo install --locked cargo-fuzz cargo-insta

bash .devcontainer/post-start.sh

#!/usr/bin/env bash
set -euo pipefail

host_codex_dir="/tmp/codex-host"
codex_home="${HOME}/.codex"

mkdir -p "${codex_home}"

if [ -f "${host_codex_dir}/auth.json" ]; then
    cp "${host_codex_dir}/auth.json" "${codex_home}/auth.json"
    chmod 600 "${codex_home}/auth.json"
else
    echo "codex auth.json was not mounted from the host; run 'codex login' inside the container if needed." >&2
fi

if [ -f "${host_codex_dir}/config.toml" ]; then
    cp "${host_codex_dir}/config.toml" "${codex_home}/config.toml"
    chmod 600 "${codex_home}/config.toml"
fi

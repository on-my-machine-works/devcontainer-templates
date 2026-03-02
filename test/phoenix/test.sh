#!/bin/bash
set -e

check() {
  local desc=$1
  local cmd=$2
  echo "🔍 Checking: $desc"
  if eval "$cmd"; then
    echo "✅ $desc"
  else
    echo "❌ FAILED: $desc"
    exit 1
  fi
}

# Verify Elixir is installed
check "elixir installed"    "elixir --version"
check "mix installed"       "mix --version"
check "hex installed"       "mix hex.info"
check "rebar installed"     "mix local.rebar --if-missing"
check "phoenix installed"   "mix phx.new --version"
check "node installed"      "node --version"
check "inotify available"   "which inotifywait"
check "git installed"       "git --version"
check "running as vscode"   "[ $(whoami) = 'vscode' ]"

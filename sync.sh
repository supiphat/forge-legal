#!/usr/bin/env bash
# Sync legal docs from the (private) Forge repo into this public mirror,
# commit, and push to GitHub. Pages rebuilds in ~60s after the push.
#
# Source of truth:  ~/projects/forge/docs/{PRIVACY,TERMS}.md
# Public mirror:    ~/projects/forge-legal/{privacy,terms}.md
#
# Run from anywhere:  ~/projects/forge-legal/sync.sh

set -euo pipefail

SOURCE_DIR="${HOME}/projects/forge/docs"
TARGET_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SSH_KEY="${HOME}/.ssh/id_ed25519_github2"
GIT_USER_NAME="supiphat"
GIT_USER_EMAIL="supiphatk17@gmail.com"

# 1. Sanity checks --------------------------------------------------------
[[ -d "$SOURCE_DIR" ]] || { echo "ERROR: source $SOURCE_DIR not found"; exit 1; }
[[ -f "$SOURCE_DIR/PRIVACY.md" ]] || { echo "ERROR: $SOURCE_DIR/PRIVACY.md missing"; exit 1; }
[[ -f "$SOURCE_DIR/TERMS.md"   ]] || { echo "ERROR: $SOURCE_DIR/TERMS.md missing";   exit 1; }
[[ -f "$SSH_KEY" ]] || { echo "ERROR: SSH key $SSH_KEY missing"; exit 1; }
[[ -d "$TARGET_DIR/.git" ]] || { echo "ERROR: $TARGET_DIR is not a git repo"; exit 1; }

cd "$TARGET_DIR"

# 2. Copy ----------------------------------------------------------------
cp "$SOURCE_DIR/PRIVACY.md" "$TARGET_DIR/privacy.md"
cp "$SOURCE_DIR/TERMS.md"   "$TARGET_DIR/terms.md"

# 3. Bail if no diff ------------------------------------------------------
if git diff --quiet privacy.md terms.md; then
    echo "No changes — privacy.md and terms.md already in sync."
    exit 0
fi

# 4. Show what changed ----------------------------------------------------
echo "Changes detected:"
git --no-pager diff --stat privacy.md terms.md
echo

# 5. Commit + push --------------------------------------------------------
git add privacy.md terms.md
git -c user.name="$GIT_USER_NAME" -c user.email="$GIT_USER_EMAIL" \
    commit -m "sync: update privacy + terms from forge/docs/ ($(date -u +%Y-%m-%dT%H:%MZ))"

GIT_SSH_COMMAND="ssh -i $SSH_KEY" git push origin main

echo
echo "Pushed. GitHub Pages will rebuild in ~60s."
echo "Verify:  https://supiphat.github.io/forge-legal/"

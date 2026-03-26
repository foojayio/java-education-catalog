#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Get the diff for SPEC.md (compare trusted base against PR head)
DIFF=$(git diff "HEAD...$HEAD_SHA" -- SPEC.md)

if [ -z "$DIFF" ]; then
  gh pr comment "$PR_NUMBER" --repo "$REPO" \
    --body "No changes to SPEC.md found in this PR — nothing to review against contribution guidelines."
  exit 0
fi

# Build the LLM request — inject live CONTRIBUTING.md into the prompt template
REPO_ROOT="$(git rev-parse --show-toplevel)"
CONTRIBUTING=$(cat "$REPO_ROOT/CONTRIBUTING.md")
PROMPT_TEMPLATE=$(cat "$SCRIPT_DIR/contribution-review-prompt.md")
SYSTEM_PROMPT="${PROMPT_TEMPLATE/\{\{CONTRIBUTING_MD\}\}/$CONTRIBUTING}"
USER_PROMPT=$(printf 'Please review this SPEC.md diff:\n\n```diff\n%s\n```' "$DIFF")

PAYLOAD=$(jq -n \
  --arg system "$SYSTEM_PROMPT" \
  --arg user "$USER_PROMPT" \
  '{
    "model": "openai/gpt-4o",
    "messages": [
      {"role": "system", "content": $system},
      {"role": "user", "content": $user}
    ],
    "max_tokens": 4096
  }')

# Call GitHub Models
RESPONSE=$(curl -sf "https://models.github.ai/inference/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -d "$PAYLOAD")

REVIEW=$(echo "$RESPONSE" | jq -r '.choices[0].message.content')

if [ -z "$REVIEW" ] || [ "$REVIEW" = "null" ]; then
  echo "Error: No review content in response"
  echo "$RESPONSE" | jq .
  exit 1
fi

# Post the review as a PR comment
gh pr comment "$PR_NUMBER" --repo "$REPO" --body "$REVIEW"

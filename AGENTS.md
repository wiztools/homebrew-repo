# Homebrew Tap Agent Instructions

This repository is a Homebrew tap. Formula release work must preserve the bottle
generation flow.

## Formula Release Flow

When bumping a formula version:

1. Open a pull request with the formula URL/SHA update and without hand-edited
   bottle hashes.
2. Wait for the `brew test-bot` pull request checks to pass and upload bottle
   artifacts.
3. Add the `pr-pull` label while the formula pull request is still open.
4. Wait for the `brew pr-pull` workflow to finish. It should publish bottle
   assets and push the bottle block commit.
5. Only merge after the bottle metadata has landed, or verify that `brew
   pr-pull` already pushed the final commit to `master`.

Do not merge a formula bump before the `pr-pull` label workflow completes. If
the PR is merged first, `brew pr-pull` can fail with an empty cherry-pick, and
the formula will install from source until bottle metadata is added separately.

Before reporting completion, verify the intended install path:

```sh
brew fetch --formula --force-bottle <formula>
```

If that command fails with a missing bottle URL, the bottle release assets or
formula bottle block are incomplete.

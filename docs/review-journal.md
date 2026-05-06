# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its reliability focus without claiming live deployment or external usage.

## Cases

- `baseline`: `budget pressure`, score 139, lane `watch`
- `stress`: `failure width`, score 201, lane `ship`
- `edge`: `recovery gap`, score 262, lane `ship`
- `recovery`: `runbook drift`, score 179, lane `ship`
- `stale`: `budget pressure`, score 185, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.

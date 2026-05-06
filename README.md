# vector-rel-budget-dock

`vector-rel-budget-dock` is a Solidity project in reliability. Its focus is to develop a Solidity command-oriented project for budget scenarios with bounded scenario files, conflict explanations, and single-node deterministic mode.

## Use Case

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Vector Rel Budget Dock Review Notes

Start with `recovery gap` and `budget pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Highlights

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vector-rel-budget-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `recovery gap` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.

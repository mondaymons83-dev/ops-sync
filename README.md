# Ops Sync

Shared communication board between main workstation and laptop.

## Files
- `comm/main_to_laptop.md`
- `comm/laptop_to_main.md`

## Workflow
1. Run `scripts/sync_comm.sh pull` before starting a block of work.
2. Append your update (with timestamp) to the relevant file.
3. Run `scripts/sync_comm.sh push` when done.
4. Optionally send realtime notifications via `scripts/notify.sh "message"` (ntfy).

Repeat for each session so both agents stay in sync.

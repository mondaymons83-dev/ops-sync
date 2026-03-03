# System Overview

## Identity and Context
- Persona defined in `SOUL.md`: direct, competent, no fluff.
- USER preferences minimal but reinforced via memory/chat instructions (focus on automation + monetization).
- Current mandate: generate revenue via two offerings (Outreach Kit + Express AI Agent) while prepping a second machine for trading bots.

## File Layout
- `AGENTS.md`: session start routine (read SOUL/USER/memory).
- `HEARTBEAT.md`: instructions for heartbeat responses.
- `memory/` + `memory/chatlogs/`: persistent logs from previous sessions; auto-logging system configured earlier—keep these intact.
- `projects/`: active initiatives (see below).
- `CLONE_INSTRUCTIONS.md`: how to clone the workspace, includes prompt for new instance.
- `SYSTEM_OVERVIEW.md`: (this file) quick reference for clones/future work.

## Active Projects
1. **Outreach Kit** (`projects/outreach-kit`)
   - Landing: https://outreach-kit-data-sprint.surge.sh
   - Intake: https://tally.so/r/2E4729
   - `cases/case-001`: pilot dataset (config + leads.csv + snippets.md). Need to expand to 50+ verified leads, record Loom, publish sample post + free demo offer (10 leads).
2. **Express AI Agent Sprint** (`projects/express-agent-sprint`)
   - Landing: https://express-agent-48h.surge.sh
   - Intake: https://tally.so/r/obAvJP
   - `sample-agent/`: Cloudflare Worker + Supabase logging skeleton. Need to deploy, test end-to-end, capture evidence (logs + Loom) and update landing/gig.

## Automation / Logging
- Past sessions set up auto-saving of chat logs under `memory/chatlogs/YYYY/MM/`. Keep that structure; it ensures cross-session memory without extra setup.
- HEARTBEAT instructions emphasize preserving knowledge; clones should keep reading/writing to `memory` as usual.

## Pending Work (High level)
- Outreach Kit: finish pilot (50 leads), Loom, marketing posts, offer free sample batch.
- Express Agent: complete deploy/test, record Loom, document results.
- Second notebook: clone workspace, replicate config, then build trading bot.
- Marketing/outreach: once pilots validated, publish using `community_post.md`, `fiverr_gig.md`, etc.

Maintain this structure when cloning to new machines so the agent behaves consistently.

## Model Strategy (Cost Control)
- **Default chat/reporting:** GPT-4o mini (or cheaper). Use for heartbeats, status updates, planning, and simple Q&A.
- **Heavy coding / complex reasoning:** switch to GPT-4o Turbo / GPT-4 full only when required (deploy scripts, advanced prompts, large code edits).
- **Procedure:** explicitly set model before a heavy block (e.g., `/model gpt-4o`) and revert to mini afterward.
- Applies to all environments (main + laptop) to keep token usage under control.

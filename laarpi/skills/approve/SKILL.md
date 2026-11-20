---
description: Approve the milestone your Laarpi game is waiting at, and carry on.
argument-hint: "[next: art, content, polish or release]"
disable-model-invocation: true
allowed-tools: mcp__plugin_laarpi_laarpi__list_games, mcp__plugin_laarpi_laarpi__step_status, mcp__plugin_laarpi_laarpi__decide
---

The person approves the milestone their Laarpi game is waiting at. What they added, if anything: "$ARGUMENTS"

1. Call the Laarpi tool `list_games`, then `step_status` for the game this conversation is working on, or else the most recently changed game that is waiting for the person (`waitingFor` is set). If no game is waiting, say so in one line with its milestone, and stop. If more than one is waiting and you cannot tell which they mean, ask which, and stop.
2. If it waits at a milestone, call `decide` with `accept: true`. If they named what comes next ("art", "content", "polish" or "release"), pass it as `next`; if they said to leave parts out, pass those as `skip`. If it waits about the budget or platforms instead, do not approve anything: tell them Laarpi's question and ask for their answer.
3. Tell them in one sentence what was approved and what Laarpi does next. Then carry on with the step Laarpi's reply gives, exactly as the Laarpi skill (`laarpi:laarpi`) describes.

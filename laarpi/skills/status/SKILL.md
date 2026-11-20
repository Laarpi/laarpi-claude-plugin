---
description: Where your Laarpi game stands - milestone, what it is waiting for, latest capture and cost.
argument-hint: "[game name]"
disable-model-invocation: true
allowed-tools: mcp__plugin_laarpi_laarpi__list_games, mcp__plugin_laarpi_laarpi__step_status
---

Show the person where their Laarpi game stands. Only look; start, approve or change nothing.

1. Call the Laarpi tool `list_games`. Pick the game named here, if any: "$ARGUMENTS". Otherwise pick the game this conversation is working on, or else the first game in the list (the most recently changed).
2. Call `step_status` for that game.
3. Answer in a few short lines, plainly, with no table and no preamble:
   - the game's name and its milestone (stage), and whether it is working, being checked, waiting for the person, or finished;
   - what it is waiting for, if anything (`waitingFor`): the milestone to approve and the files to look at, or the budget or platform question;
   - the latest capture (`latestCapture`) as a full path, if there is one;
   - the cost so far (`costUsd`) and the budget cap (`budgetUsd`), in US dollars, if there is a cap, and in a few words what that cost covers (`costCovers`).
4. If it waits for the person at a milestone, end with one line: they can approve with `/laarpi:approve` or ask for changes with `/laarpi:notes "<what to change>"`, and see it with `/laarpi:open`.

If there are no games yet, say so in one line and that `/laarpi:new "<idea>"` starts one.

If the Laarpi tools are missing or do not answer, say that the Laarpi app is closed and ask them to open it.

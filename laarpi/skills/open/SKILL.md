---
description: Open your Laarpi game in the Laarpi app, to see and play it.
argument-hint: "[game name]"
disable-model-invocation: true
allowed-tools: mcp__plugin_laarpi_laarpi__list_games, mcp__plugin_laarpi_laarpi__open_game
---

Open the person's game in the Laarpi app.

1. Call the Laarpi tool `list_games`. Pick the game named here, if any: "$ARGUMENTS". Otherwise pick the game this conversation is working on, or else the first game in the list (the most recently changed).
2. Call `open_game` for it.
3. Answer in one line: which game is now open in Laarpi. Nothing else.

If the Laarpi tools are missing or do not answer, say that the Laarpi app is closed and ask them to open it.

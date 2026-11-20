---
description: Send changes for your Laarpi game - at a milestone, or after playing it.
argument-hint: "\"<what to change>\""
disable-model-invocation: true
allowed-tools: mcp__plugin_laarpi_laarpi__list_games, mcp__plugin_laarpi_laarpi__step_status, mcp__plugin_laarpi_laarpi__decide, mcp__plugin_laarpi_laarpi__send_feedback
---

The person wants changes to their Laarpi game. Their words, to pass on as written:

<notes>
$ARGUMENTS
</notes>

If the notes are empty, ask them what they would like changed, and stop.

1. Call the Laarpi tool `list_games`, then `step_status` for the game this conversation is working on, or else the most recently changed game.
2. Pass the notes on in their words, without rewording or adding to them:
   - if the game waits at a milestone (`waitingFor` is a milestone), call `decide` with `accept: false` and `direction` set to the notes;
   - otherwise, once the game has a playable build, call `send_feedback` with `feedback` set to the notes, and `images` with the full paths of any screenshots they gave;
   - if it has no build yet and is not waiting, tell them the notes will apply at the next milestone stop, and stop.
3. Tell them in one sentence that Laarpi has the notes and what it does next. Then carry on with the step Laarpi's reply gives, exactly as the Laarpi skill (`laarpi:laarpi`) describes.

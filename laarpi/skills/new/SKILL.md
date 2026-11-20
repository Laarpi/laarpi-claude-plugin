---
description: Start a new game in Laarpi from an idea, then make it milestone by milestone.
argument-hint: "<your game idea>"
disable-model-invocation: true
allowed-tools: mcp__plugin_laarpi_laarpi__new_game
---

The person wants Laarpi to make a new game from this idea, in their own words:

<idea>
$ARGUMENTS
</idea>

If the idea above is empty, ask them for a sentence or two about the game they want, and stop there.

Otherwise call the Laarpi tool `new_game` with `prompt` set to the idea exactly as written. Pass `platforms` only if the idea names platforms (Android, iPhone or iPad, a browser game, Windows, Mac, Linux), and exactly those. Pass `mode` only if the idea says Manual ("stop for my approval") or Auto ("run through by itself"). Leave `engine` out unless the idea names one. Do not design the game first and do not ask questions.

Then tell the person, in one or two sentences, that the game has started, what Laarpi does next, and that they can follow it in the Laarpi app. Carry on with the step Laarpi's reply gives, exactly as the Laarpi skill (`laarpi:laarpi`) describes: one fresh subagent per step, hand-backs to the studio, and a stop whenever Laarpi needs the person.

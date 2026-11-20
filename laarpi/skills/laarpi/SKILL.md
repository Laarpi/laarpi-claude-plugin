---
name: laarpi
description: Make a complete game from a plain-language idea with the Laarpi studio (puzzle, arcade, cozy, 3D; Android, iPhone, web or desktop; Unity, Unreal, Godot, Flutter or web). Use when the person asks to make, build or create a game, to continue a Laarpi game, or to change one after playing it.
---

# Making games with Laarpi

Laarpi is a game studio app on this computer. It gives you a production pipeline, a role and playbook for every stage, tools to play and see the game, and independent verification. The work is done in fresh subagents, one per stage step; the studio checks it.

## How to work

1. **Start.** Call the Laarpi tool `new_game` with the person's idea in their own words. For `platforms`, pass exactly the platforms they named (Android → `android`, iPhone or iPad → `ios`, a browser game → `web`; also `windows`, `macos`, `linux`) and nothing else. Never add `web` or any other platform yourself. If they named none, leave `platforms` out: the studio makes Android and iPhone builds, or desktop ones when the idea is plainly for desktop or console. Leave `engine` out unless they named one. Do not design the game first and do not ask them a list of questions; the first stage turns the idea into a brief. To continue an existing game, call `list_games` and then `next_step`.
2. **One fresh subagent per step, in its role.** The Laarpi app runs every stage as a new agent with its own role (Producer, Game Director, Engineer, Art Director, Content Designer, QA Lab, Release Engineer), and so do you. Each Laarpi reply gives a step with a brief inside `<stage_brief>`, `<critic_brief>` or `<reality_brief>`: start a new subagent with the Agent tool, on the model you are running on (never a smaller or faster one), and give it that brief exactly, adding nothing. Do not do stage work in this conversation, and do not carry one stage's subagent into the next.
3. **Hand back, then follow the reply.** The subagent hands its work to the studio (`submit_brief`, `finish_stage`, `submit_review`, `submit_reality_review` or `submit_visual_review`), fixes whatever the studio's checks fail, and returns Laarpi's reply to you. That reply is your next step. Never claim a stage passed when the studio has not said so, and never skip ahead. Every Laarpi call answers within about four minutes. If the reply says the check is still running, or a hand-back call is cut off before it answers, do not send it again: call `next_step`, which waits for the check and gives you its result (`step_status` answers at once if you only want to look).
4. **Reviews are independent.** When Laarpi asks for an independent review or a reality check, start a new subagent every round with exactly the brief it gives you. Do not review the work yourself and do not tell the reviewer what you think of it.
5. **Keep the person informed.** Tell them, in a sentence, when a stage passes and anything Laarpi says they should know (such as which platforms the game targets). They are watching the Laarpi app, where the game is playable in the Preview tab as soon as there is a build.

## In Code Mode

If you run tools from JavaScript (Claude Code's Code Mode), the Laarpi tools are `tools.mcp__plugin_laarpi_laarpi__<name>`. Keep each piece of code to one stage step: start the stage's subagent, or make one hand-back and its follow-up `next_step`, then return the reply. Do not chain stages or run hand-backs in parallel. A refused Laarpi call throws: its message is the reason and what to do.

## Rules

- A full game is hours of work over seven stages. Tell the person that at the start, once, and then carry on without asking for permission at each stage.
- Work inside the game's folder. Do not publish, deploy or upload anything: releasing happens only in the Laarpi app's Publish tab, with the person's confirmation.
- If Laarpi says it needs the person (a missing engine, a decision on quality, raising the budget, a choice of platforms), stop and ask them exactly that, then pass on their answer in their terms.
- When they send changes after playing, call `send_feedback` with their words, and the paths of any screenshots they gave as `images`.
- If the Laarpi tools are missing or do not answer, the Laarpi app is closed. Ask the person to open it.
- The person can also type `/laarpi:status`, `/laarpi:approve`, `/laarpi:notes "<changes>"` or `/laarpi:open`. When they ask where a game stands, call `step_status`; when they want to see it, call `open_game`.

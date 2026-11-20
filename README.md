# Laarpi plugin

This plugin lets you make games with the [Laarpi](https://games.laarpi.com) game studio app from Claude, using your own Claude plan. It adds:

- `/laarpi:new <your game idea>` starts a new game from your idea, in your own words.
- `/laarpi:status` shows where your game stands, what it is waiting for and what it has cost.
- `/laarpi:approve` approves the milestone your game is waiting at.
- `/laarpi:notes "<what to change>"` sends changes, at a milestone or after you play the game.
- `/laarpi:open` opens your game in the Laarpi app.

You sign in to Claude with your own account. This plugin never asks for your Claude login or an API key.

## What you need

- The Laarpi app, open on the same computer. The plugin talks to the app over a local connection (`127.0.0.1`, port 47821) that only works on this computer. In the app, Claude Code has to be set up once (Use Claude Code instead, then Add Laarpi). When it is, the app writes a private access file (only you can read it) to its own data folder, and the plugin reads that file each time it connects.
- The Claude desktop app, or the `claude` command in a terminal. Both need a paid Claude plan.

## Install in the Claude desktop app

1. Open the Claude desktop app and click **Code** at the top of the sidebar.
2. Start a local session: pick **Local** under the prompt box and open any folder, for example your Laarpi games folder.
3. Click **+** next to the prompt box, then **Add plugins**. If the menu shows **Plugins** instead, click **Plugins**, then **Browse plugins**.
4. Find **Laarpi**, select it, and install it for your user account.

The plugin browser lists plugins from the marketplaces Claude already knows. To make Laarpi appear without a terminal, press **Use Claude Code instead**, then **Add Laarpi** in the Laarpi app (Home or Settings): it adds this marketplace to Claude's settings (`extraKnownMarketplaces` in `~/.claude/settings.json`) and changes nothing else. Then look again.

## Install with the terminal

```sh
claude plugin marketplace add Laarpi/laarpi-claude-plugin
claude plugin install laarpi@laarpi
```

If you already installed the plugin from the Laarpi app, you don't need this: the app's copy is the same plugin, under the same name.

## If something does not work

- **The Laarpi tools are missing or do not answer**: the Laarpi app is closed. Open it and start a new session.
- **Another program uses port 47821**: this copy of the plugin only knows that port. Quit the other program and restart Laarpi, or install the plugin from the Laarpi app's Settings instead, which follows the app to whichever port it uses.

## Privacy

The plugin connects only to the Laarpi app on your own computer (`127.0.0.1`). It sends nothing to any other server. See the [Laarpi privacy policy](https://games.laarpi.com/privacy).

## Licence

MIT. See [LICENSE](LICENSE). The Laarpi app is sold separately and has its own terms.

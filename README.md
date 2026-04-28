# Depot

Svelte 5 + TypeScript + Vite app using Bun.

## Work Locally

1. Install Bun: <https://bun.sh>
2. Install dependencies:
   ```bash
   bun install
   ```
3. Start the dev server:
   ```bash
   bun run dev
   ```
4. Open `http://localhost:5173`

## Work In Cloud (GitHub Codespaces / Dev Containers)

This repo includes a ready-to-use dev container at `.devcontainer/devcontainer.json`.

1. Open the repo in a Codespace (or any Dev Container-compatible environment).
2. Wait for post-create setup to finish (it installs Bun + dependencies).
3. Run:
   ```bash
   bun run dev --host
   ```
4. Open forwarded port `5173` in the cloud workspace.

## Common Commands

```bash
bun run dev      # start local dev server
bun run build    # production build
bun run preview  # preview production build
bun run check    # type and Svelte checks
```

## Why This Setup

- Local and cloud both use Bun commands.
- Cloud environments are standardized through `.devcontainer`.
- The same scripts and dependency lockfile are used in both places.

# Depot

Svelte 5 + TypeScript + Vite app using Bun.

## Design System Philosophy & Constraints

Depot is a **token-governed, hybrid design system**: strict core primitives plus optional installable themes.

### Core Philosophy

- **Hybrid architecture (Core + Themes)**:  
  Core components own anatomy, behavior, accessibility, and layout mechanics. Themes own visual identity.
- **Token-driven styling**:  
  Components consume semantic tokens only; no hardcoded brand styles in core primitives.
- **Governed flexibility**:  
  Escape hatches are limited to accessibility and structural needs (focus rings, hairlines, layout helpers), not arbitrary visual styling.
- **Neutral baseline**:  
  Core ships a restrained default for docs/onboarding/previews while keeping identity in installable themes.

### Layer Responsibilities

| Layer | Responsibility |
| --- | --- |
| Components | Structure and behavior |
| Tokens | Visual values |
| Themes | Identity (typography, motion, density, semantic mappings) |
| CLI | Source distribution and installation workflow |
| Figma | Canonical system definition and parity anchor |

### Constraints

- Core components must:
  - consume semantic tokens only
  - avoid hardcoded colors/brand aesthetics
  - expose behavior/state/structural props (for example `size`, `loading`, `disabled`, `iconOnly`)
- Core components must not:
  - expose uncontrolled visual props (`color`, `rounded`, `shadow`, etc.)
  - couple primitives to theme-specific identity
- Themes may:
  - extend semantic tokens
  - define brand identity and aesthetic systems
- Themes must not:
  - alter component anatomy or interaction logic
  - omit required semantic token contract entries

### Distribution Model

Depot follows a **shadcn-style source distribution workflow**:

- Install whole system, theme-only, or component-by-component
- Copy editable source files into consumer repos
- Preserve long-term ownership and customization

Example installs:

```bash
npx depot add button
npx depot add theme industrial
```

### Guiding Principles

- Flexibility without fragmentation
- Consistency through constraints
- Themes define identity
- Semantic contracts over visual coupling
- Source ownership over lock-in
- Long-term scalability over short-term convenience

### Architectural Outcome

Depot is intended to remain:

- a strict primitive architecture
- a token-governed design system
- a themeable UI foundation
- a progressive installation platform
- a long-term system architecture for modern UI development

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

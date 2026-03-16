# Repository Guidelines

## Project Structure & Module Organization
- Svelte + Vite app; entry at `src/main.js` mounts `src/App.svelte`.
- Shared UI lives in `src/lib` (e.g., `Block.svelte`); add reusable components here.
- Styles are in `src/assets/*.scss`; `prepends.scss` holds shared variables/mixins imported across files.
- Static files belong in `public/`; production builds output to `dist/`.

## Build, Test, and Development Commands
- `npm install` (or `npm ci` in CI): install dependencies.
- `npm run dev`: start Vite dev server with hot reload; use `npm run dev -- --host` for LAN/mobile testing.
- `npm run build`: production bundle; run before publishing to catch compile errors.
- `npm run preview`: serve the built output locally to verify the production bundle.

## Coding Style & Naming Conventions
- Components use PascalCase filenames (`Block.svelte`); prefer one component per file.
- Keep script/style blocks minimal; extract reusable blocks into `src/lib`.
- SCSS: define shared tokens in `prepends.scss`; keep component-scoped styles near their `.svelte` files; prefer nested selectors only for DOM hierarchy.
- Indentation: 2 spaces; keep imports ordered (libs, components, styles).

## Testing Guidelines
- No automated tests are present; rely on manual verification via `npm run dev` plus `npm run build`.
- For visual changes, open `npm run preview` and check breakpoints commonly used in the portfolio sections.
- Add lightweight component-level checks if introducing behavior that can regress (e.g., intersection observer interactions).

## Commit & Pull Request Guidelines
- Follow Conventional Commit style used in history (`chore(deps): update all`, `feat: …`, `fix: …`); include scope when useful.
- Each PR: short summary, linked issue (if any), and before/after screenshots or recordings for UI tweaks.
- Ensure `npm run build` succeeds before requesting review; mention any remaining TODOs or follow-ups in the description.

# afresquet.com

Personal site. One page, static, generated with [Zola](https://www.getzola.org).

## Layout
- `content/_index.md`: all the copy. Prose in the body; header links, work, projects and skills as TOML in the front matter.
- `templates/index.html`: the page. `base.html` holds the `<head>`.
- `static/style.css`: the stylesheet. `static/favicon.svg`.
- `.github/workflows/deploy.yml`: builds and deploys on every push.

## Working locally
The flake provides Zola. With direnv, `direnv allow` once; otherwise `nix develop`.
```sh
zola serve      # http://127.0.0.1:1111, rebuilds on change
zola build      # writes public/
nix build       # same site via the flake package, into ./result
```

## Deploying
GitHub Actions runs `nix build`, so `flake.lock` is the only Zola version pin. It then uploads the result to the Cloudflare Pages project `afresquet` with wrangler. Pushes to `main` deploy to production; other branches get a preview URL.

One-time setup:
1. Create the Pages project as a direct-upload project named `afresquet`, with production branch `main`.
2. Create a Cloudflare API token with the *Account · Cloudflare Pages · Edit* permission.
3. Add repository secrets `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID`.
4. In the Pages project, add `afresquet.com` and `www.afresquet.com` as custom domains.
5. Add a redirect rule on the zone sending `www.afresquet.com/*` to `https://afresquet.com/${1}` with a 301, so there is one canonical address.

[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Personal Jekyll Site

This repository contains a personal static website built with Jekyll (GitHub Pages compatible).

## Quick Start

Requirements:

- Ruby (2.5+ recommended)
- Bundler

From the repository root:

```bash
bundle install
bundle exec jekyll serve
```

This starts a local server at `http://127.0.0.1:4000` by default.

To build the static site without serving:

```bash
bundle exec jekyll build
```

The generated files will be written to `_site/`.

## Repository Structure

[Chirpy documentation](/Chirpy_README.md)

## Adding Content

- Pages: add `*.md` or `*.html` files in `_tabs/` with proper YAML front matter.
- Posts: add files under `_posts/` following the `YYYY-MM-DD-title.markdown` convention and include front matter (`title`, `layout`, `date`, etc.).

## Deployment

It is being deployed to Github Pages by [custom workflow](/.github/workflows/pages-deploy.yml)

## Notes & Next Steps

- Backlog has been created in [TODO.md](TODO.md)

## Contact

If you need help maintaining this site, open an issue or contact via Email: [75devendrasahu@gmail.com](mailto:75devendrasahu@gmail.com).

| Commit message                                                                                                                                                                                   | Release type                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- |
| `fix(pencil): stop graphite breaking when too much pressure applied`                                                                                                                             | ~~Patch~~ Fix Release                                                                                           |
| `feat(pencil): add 'graphiteWidth' option`                                                                                                                                                       | ~~Minor~~ Feature Release                                                                                       |
| `perf(pencil): remove graphiteWidth option`<br><br>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release <br /> (Note that the `BREAKING CHANGE:` token must be in the footer of the commit) |
| `chore(pencil): add 'xyz' post`                                                                                                                                                            | No release, just regular work                                                                                   |

## Resources

- [Icon generator](https://realfavicongenerator.net/)
- <https://raffertyuy.com/about/>
- [awesome-copilot](https://github.com/github/awesome-copilot/tree/main)

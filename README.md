[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Personal Jekyll Site

This repository contains a personal static website built with Jekyll (GitHub Pages compatible). The site source lives in the `docs/` folder and the generated site output is in `docs/_site/`.

## Quick Start

Requirements:
- Ruby (2.5+ recommended)
- Bundler

From the repository root:

```bash
cd docs
bundle install
bundle exec jekyll serve
```

This starts a local server at `http://127.0.0.1:4000` by default and watches the `docs/` folder for changes.

To build the static site without serving:

```bash
cd docs
bundle exec jekyll build
```

The generated files will be written to `docs/_site/`.

## Repository Structure

- `docs/` – Jekyll site source (pages, posts, layouts, assets)
	- `_layouts/` – HTML templates
	- `_pages/_posts` – Blog posts (use `YYYY-MM-DD-title.markdown` with front matter)
	- `assets/` – CSS, images and other static assets
	- `_config.yml` – Jekyll configuration

## Adding Content

- Pages: add `*.markdown` or `*.html` files in `docs/` with proper YAML front matter.
- Posts: add files under `docs/_posts/` following the `YYYY-MM-DD-title.markdown` convention and include front matter (`title`, `layout`, `date`, etc.).

## Contributing

- Make changes on a feature branch and open a pull request.
- If you modify dependencies, run `bundle install` in `docs/` and update `Gemfile`/`Gemfile.lock` as needed.

## Deployment

If using GitHub Pages, configure the repository Pages source to use the `docs/` folder (or push the generated `_site/` to the branch/branch's `gh-pages` as you prefer).

## Notes & Next Steps

- The `.github/copilot-instructions.md` file contains contributor guidelines; review before making large edits.

## Contact

If you need help maintaining this site, open an issue or contact via Email: [75devendrasahu@gmail.com](mailto:75devendrasahu@gmail.com).


| Commit message                                                                                                                                                                                   | Release type                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- |
| `fix(pencil): stop graphite breaking when too much pressure applied`                                                                                                                             | ~~Patch~~ Fix Release                                                                                           |
| `feat(pencil): add 'graphiteWidth' option`                                                                                                                                                       | ~~Minor~~ Feature Release                                                                                       |
| `perf(pencil): remove graphiteWidth option`<br><br>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release <br /> (Note that the `BREAKING CHANGE: ` token must be in the footer of the commit) |
| `chore(pencil): add 'xyz' post`                                                                                                                                                       		   | No release, just regular work                                                                                   |


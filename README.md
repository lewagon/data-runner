
# release

- create `py-${PYTHON_VERSION}-${YEAR}-${QUARTER}` branch
- update `Dockerfile` source image python version
- update `requirements.txt` from [data-setup specs/releases/glovebox.txt](https://github.com/lewagon/data-setup/blob/master/specs/releases/glovebox.txt)
- push branch and draft a new release, which triggers the `ghcr_publish_on_release_tag` GHA
- update `data-solutions` glovebox image

## draft a release

[draft a new release](https://github.com/lewagon/data-runner/releases):
- choose a tag: use branch name (ignore branch/tag naming confusion warning) / create
- release title: use branch name
- description: ...
- publish release

## list container images

``` bash
gh release list --repo lewagon/data-runner
```

## update data-solutions glovebox image

[edit data-solutions/test-solutions-action/Dockerfile](https://github.com/lewagon/data-solutions/blob/master/test-solutions-action/Dockerfile):
- replace `FROM ghcr.io/lewagon/data-runner:$TAG_NAME`

# files

``` bash
.github/workflows/ghcr_publish_on_release_tag.yml           # publication GHA
.github/workflows/ghcr_build_latest_on_push.yml             # useless (no push/merge on master)
```

# source

requirements.txt    [data-setup specs/releases/past/2022_Q4/glovebox.txt](https://github.com/lewagon/data-setup/blob/setup-2022-q4/specs/releases/past/2022_Q4/glovebox.txt)

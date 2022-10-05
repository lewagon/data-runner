
# release

- create `py-${PYTHON_VERSION}-${YEAR}-${QUARTER}` branch
- update `Dockerfile` source image python version
- update `requirements.txt` from [data-setup specs/releases/glovebox.txt](https://github.com/lewagon/data-setup/blob/master/specs/releases/glovebox.txt)
- push branch and draft a new release, which triggers the `ghcr_publish_on_release_tag` GHA

# usage

``` bash
gh release list               # list releases
```

# files

``` bash
.github/workflows/ghcr_publish_on_release_tag.yml           # publication GHA
.github/workflows/ghcr_build_latest_on_push.yml             # useless (no push/merge on master)
```

# source

requirements.txt    [data-setup specs/releases/past/2022_Q4/glovebox.txt](https://github.com/lewagon/data-setup/blob/setup-2022-q4/specs/releases/past/2022_Q4/glovebox.txt)

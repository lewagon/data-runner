
# release

- update `Dockerfile` source image python version / `requirements.txt`
- make sure it builds
- TODO update `requirements.txt` from [data-setup specs/releases/glovebox.txt](https://github.com/lewagon/data-setup/blob/master/specs/releases/glovebox.txt)
- create tag / push commit
- draft a `release` (which triggers the `ghcr_publish_on_release_tag` GHA)
- update `data-solutions` glovebox image
- update `active_admin` programs to use the image

list container images:

``` bash
gh release list --repo lewagon/data-runner
```

## update `data-solutions` glovebox image

TODO [edit data-solutions/test-solutions-action/Dockerfile](https://github.com/lewagon/data-solutions/blob/master/test-solutions-action/Dockerfile):
- replace `FROM ghcr.io/lewagon/data-runner:$TAG_NAME`

## update `active_admin` programs to use the image

[edit data program](https://kitt.lewagon.com/active_admin/programs/10/edit)
- runner tag: use `${BRANCH_NAME}-v1`
- update program

# release update

- push branch
- edit `release` (which triggers the `ghcr_publish_on_release_tag` GHA)
- update `data-solutions` glovebox image
- update `active_admin` programs to use the image

## edit `release`

[edit release](https://github.com/lewagon/data-runner/releases):
- edit the release
- choose a tag: `${BRANCH_NAME}-v2` / create
- release title: `${BRANCH_NAME}-v2`
- update release

# files

``` bash
.github/workflows/ghcr_publish_on_release_tag.yml           # publication GHA
```

# source

requirements.txt    [data-setup specs/releases/glovebox.txt](https://github.com/lewagon/data-setup/blob/master/specs/releases/glovebox.txt)

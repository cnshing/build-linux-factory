# build-linux-factory
Github action for Clay Risser's [linux factory](https://github.com/clayrisser/linux-factory/) framework. The current version is `v1`.

## Example Usage
https://github.com/cnshing/build-linux-factory/blob/fbb4b2b88353f5296f03b656a3da2fffe2753ba7/.github/workflows/test-clayrisser-linux-factory.yml#L9-L38

<!-- action-docs-header source="action.yml" -->

<!-- action-docs-header source="action.yml" -->

<!-- action-docs-description source="action.yml" -->
## Description

Builds an image from a linux factory
<!-- action-docs-description source="action.yml" --> 

<!-- action-docs-inputs source="action.yml" -->
## Inputs

| name | description | required | default |
| --- | --- | --- | --- |
| `path` | <p>Path of the linux factory under `$GITHUBWORKSPACE`. If no path is supplied, `$GITHUBWORKSPACE` will act as the working build directory.</p> | `false` | `""` |
<!-- action-docs-inputs source="action.yml" -->

<!-- action-docs-outputs source="action.yml" -->

<!-- action-docs-outputs source="action.yml" -->

<!-- action-docs-runs source="action.yml" -->
## Runs

This action is a `composite` action.
<!-- action-docs-runs source="action.yml" --> 

## BTS

Any dependencies required for Linux Factory are installed via [`action.yml`](action.yml) and subsequently used to build the image. You may run this action on any runner VM, provided the Linux Factory [dependencies](https://github.com/clayrisser/linux-factory?tab=readme-ov-file#dependencies) and `debian-archive-keyring` are installable via APT. This action will also attempt to install [live-build](https://packages.debian.org/stable/live-build) from the current Debian stable repository for compatibility purposes.  

Some of the workflow files are "dummy" files like [`test-clayrisser-linux-factory.yml`](.github/workflows/test-clayrisser-linux-factory.yml), where the source workflow code don't appear to do anything in the main/release branch but are instead located in a seperate testing branch.


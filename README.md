# build-linux-factory
Github action for Clay Risser's [linux factory](https://github.com/clayrisser/linux-factory/) framework. The current version is `v1`.

## Example Usage
https://github.com/cnshing/build-linux-factory/blob/fb78fd858d68cafef0bacfb69318bb7e1f1984e3/.github/workflows/test-clayrisser-linux-factory.yml#L9-L24

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

A Docker image is generated from [`Dockerfile`](Dockerfile) containing all the neccesary dependencies for linux-factory via [`linux-factory-dependencies.yml`](.github/workflows/linux-factory-dependencies.yml). The [`action.yml`](action.yml) then runs the docker container and attempts to build the image via [`entrypoint.sh`](entrypoint.sh).

Some of the workflow files are "dummy" files like [`test-clayrisser-linux-factory.yml`](.github/workflows/test-clayrisser-linux-factory.yml), where the source workflow code don't appear to do anything in the main/release branch but are instead located in a seperate testing branch.


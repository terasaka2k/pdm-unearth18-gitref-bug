# PDM Unearth 0.18.0 Bug Reproduction

This is a tiny project to demonstrate a bug in `pdm` when using `unearth==0.18.0` for resolving git dependencies.

## Bug with unearth 0.18.0

The following command demonstrates the bug:

```sh
# Command to reproduce the bug
make build
make show-installed-ref
```

```
    "requested_revision": "v1.1.2",
    "commit_id": "e4d2539177a3d72c8e52d91708bbe62e5085155d"
```

NOTE: The tag `v1.1.2` should resolve to commit `d66cb70`, but it is incorrectly resolving to `e4d2539`, which is the head of the default branch.

## No bug with unearth 0.17.5

To confirm the bug is not present with `unearth==0.17.5`, uncomment the following line in `Dockerfile`:

```dockerfile
# RUN pip install unearth==0.17.5
```

Then, run the same commands, which should work correctly:

```sh
make build
make show-installed-ref
```

```
    "requested_revision": "v1.1.2",
    "commit_id": "d66cb70cb8fcb9dbc7f8d3192f38403e1d46b7c3"
```

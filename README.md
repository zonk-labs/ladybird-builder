# Ladybird builder

⚠️ This is no longer maintained. Use the vscode .devcontainer extension to
build and execute ladybird source in a container.

## How to use

Set `LADYBIRD_GIT_REPO` to point to the directory of ladybird source.

```sh
docker compose up -d
docker attach ladybird-builder-buildcontainer-1
```

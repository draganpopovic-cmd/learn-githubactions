# Hello World Docker Action

A simple GitHub Action that runs in a Docker container and outputs a greeting message.

## Usage

### Basic usage

```yaml
- uses: ./hello-world-docker-action
```

### With custom inputs

```yaml
- uses: ./hello-world-docker-action
  with:
    name: 'GitHub'
    message: 'Welcome'
```

### Capture output

```yaml
- uses: ./hello-world-docker-action
  id: hello
  with:
    name: 'World'
    message: 'Hello'

- name: Print greeting
  run: echo "${{ steps.hello.outputs.greeting }}"
```

## Inputs

### `name`
**Optional** Name to greet. Default: `World`

### `message`
**Optional** Custom message to display. Default: `Hello`

## Outputs

### `greeting`
The complete greeting message (e.g., "Hello, World!")

## Example Workflow

```yaml
name: Test Hello World Action

on: [push]

jobs:
  hello:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      
      - name: Run hello world action
        id: greeting
        uses: ./hello-world-docker-action
        with:
          name: 'GitHub Actions'
          message: 'Welcome to'
      
      - name: Display output
        run: echo "Output: ${{ steps.greeting.outputs.greeting }}"
```

## How it works

1. Action receives inputs (name and message)
2. Entrypoint script generates a greeting
3. Output is set in `GITHUB_OUTPUT`
4. Greeting can be used in subsequent steps

## Files

- `action.yml` - Action metadata and configuration
- `Dockerfile` - Docker image definition
- `src/entrypoint.sh` - Script that runs inside the container

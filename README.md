# Dev Container Templates

A collection of [dev container templates](https://containers.dev/implementors/templates/) for quickly spinning up development environments in VS Code or GitHub Codespaces.

## Templates

| Template | Description |
|----------|-------------|
| [phoenix](src/phoenix) | Develop Phoenix web applications with Elixir and PostgreSQL. |

## Usage

In VS Code, open the Command Palette and run **Dev Containers: Add Dev Container Configuration Files**, then select **Show All Definitions** and search for the template you want.

Alternatively, reference a template directly in your `devcontainer.json`:

```json
{
  "templateRef": "ghcr.io/on-my-machine-works/devcontainer-templates/phoenix"
}
```

## License

[MIT](LICENSE)

# Homebrew Knightmax

A personal Homebrew tap with tools and utilities by [@knightmax](https://github.com/knightmax).

## Installation

### Tap the repository

```bash
brew tap knightmax/knightmax
```

### Install a formula

```bash
brew install purectx
```

## Available Formulas

- **purectx** — Command-output purification proxy for LLMs written in Rust

## What is PureCtx?

`pure` automatically filters noise from command output to reduce token counts and improve signal-to-noise ratio before feeding logs into an LLM.

### Quick example

```bash
# Instead of:
mvn clean install

# Run through pure:
pure mvn clean install

# Works with any command:
pure npm run build
pure cargo test
pure dotnet build
pure gradle assemble
```

See the [PureCtx repository](https://github.com/knightmax/PureCtx) for more information.

## Contributing

To add a new formula, create a `.rb` file in the `Formula/` directory.

## License

MIT

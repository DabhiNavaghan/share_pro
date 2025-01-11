# Contributing to share_pro

First off, thank you for considering contributing to share_pro! It's people like you that make this plugin better for everyone. This document provides guidelines and steps for contributing.

## Code of Conduct

By participating in this project, you are expected to uphold our Code of Conduct. Please report unacceptable behavior to dabhinvavaghan6@gmail.com.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates. When you create a bug report, include as many details as possible:

- Use a clear and descriptive title
- Describe the exact steps to reproduce the problem
- Provide specific examples to demonstrate the steps
- Describe the behavior you observed and what behavior you expected
- Include device information (OS version, Flutter version, etc.)
- Include relevant logs and screenshots

### Suggesting Enhancements

If you have ideas for new features or improvements:

- Use a clear and descriptive title
- Provide a detailed description of the proposed enhancement
- Explain why this enhancement would be useful to most users
- List any additional context or screenshots

### Pull Requests

1. Fork the repository and create your branch from `main`
2. If you've added code that should be tested, add tests
3. Ensure the test suite passes
4. Make sure your code follows the existing code style
5. Write a clear commit message
6. Include appropriate documentation updates

## Development Setup

1. Install Flutter (latest stable version)
2. Clone the repository:
   ```bash
   git clone https://github.com/DabhiNavaghan/share_pro.git
   cd share_pro
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

## Coding Style

- Follow the [Flutter style guide](https://docs.flutter.dev/development/tools/formatting)
- Run `flutter analyze` before submitting
- Write descriptive variable and function names
- Comment complex logic
- Keep functions focused and concise

## Testing

- Write unit tests for new functionality
- Run tests before submitting:
  ```bash
  flutter test
  ```
- Aim for high test coverage
- Include both success and failure test cases

## Documentation

- Update README.md with any new features
- Document public APIs using dartdoc comments
- Include example usage for new features
- Update the CHANGELOG.md file

## Commit Messages

Format your commit messages as follows:
```
feat/fix/docs/style/refactor/test/chore(scope): descriptive message

[optional body]

[optional footer]
```

Examples:
- `feat(sharing): add support for sharing multiple images`
- `fix(ios): resolve crash when sharing large files`
- `docs: update installation instructions`

## Review Process

1. Maintainers will review your PR
2. Changes may be requested
3. Once approved, your PR will be merged
4. You'll be added to the contributors list

## Release Process

1. Version numbers follow [Semantic Versioning](https://semver.org/)
2. Changes are documented in CHANGELOG.md
3. Releases are tagged in Git
4. Releases are published to pub.dev

## Questions?

Feel free to open an issue with your question or contact the maintainers directly.

## License

By contributing, you agree that your contributions will be licensed under the same license as the original project.

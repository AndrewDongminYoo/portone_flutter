# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This Flutter package was created to offer seamless integration for PortOne's V2 payment process by implementing a WebView wrapper for the PortOne.browser SDK's `PortOne.requestPayment` method. This project was developed to overcome the limitations of PortOne's outdated Flutter SDK (v1) and its insufficient documentation. **Note:** This package is not directly affiliated with PortOne or endorsed by them—it merely leverages their existing browser SDK to provide a developer-friendly integration solution.

## Coding Guidelines

### Build Commands

- Run dev mode: `flutter run`
- Format code: `dart run import_sorter:main -e && dart format --line-length 120 .`
- Run tests: `flutter test`
- Run single test: `flutter test test/path/to/test_file.dart`
- Generate code: `dart run build_runner build --delete-conflicting-outputs`
- Bootstrap project: `dart run build_runner build --delete-conflicting-outputs && dart format --line-length 120 . && dart run import_sorter:main -e`
- Fix code: `dart fix --apply`

### Style Guidelines

- Line length: 120 characters
- Use strict-casts, strict-inference, and strict-raw-types
- Import sorting: Use `import_sorter` with emojis (🐦 Flutter, 📦 Package, 🌎 Project)
- Linting: Follows very_good_analysis (main) and flutter_lints (example)
- Types: Use explicitly typed variables and parameters
- Test coverage: Write unit tests for all functionality
- Avoid unused variables, imports, and elements (treated as errors)
- Naming: Use camelCase for variables/methods, PascalCase for classes
- Prefer single quotes for strings
- Require trailing commas for multi-line parameters

### Project Structure

- Flutter package for PortOne V2 payment integration
- Uses json_serializable with checked: true and explicit_to_json: true
- Tests written with flutter_test, mockito, and mocktail
- CI configured with Very Good Workflows for formatting, linting, and testing

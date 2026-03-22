# Project Rules & Patterns

General best practices and rules for `ollama_pdf_rag`, inspired by `everything-claude-code`.

## General Guidelines
- **Commit Messages**: Use conventional commits (feat:, fix:, docs:, refactor:).
- **Documentation**: All public functions in `src/` should have docstrings.
- **Testing**: Every new feature must have a corresponding test in `tests/`.

## Python Patterns
- Use **Type Hinting** for all function signatures.
- Prefer `pathlib` over `os.path`.
- Use `ruff` for linting and formatting.

## AI & RAG Specifics
- Embedding models should be initialized as singletons or cached resources.
- Large PDF processing should be chunked and use progress bars/logging.

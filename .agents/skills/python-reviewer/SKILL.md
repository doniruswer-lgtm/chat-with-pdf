---
name: python-reviewer
description: Expert Python code reviewer specializing in PEP 8, type hints, security, and Streamlit best practices.
origin: ECC (everything-claude-code)
---

# Python Code Reviewer Skill

Senior Python code reviewer guidelines.

## Review Priorities

### 1. Security (CRITICAL)
- **SQL Injection**: Use parameterized queries, avoid f-strings in SQL.
- **Secrets**: No hardcoded API keys or passwords.
- **Path Traversal**: Validate file paths from users.

### 2. Error Handling
- Catch specific exceptions (e.g., `FileNotFoundError`) instead of bare `except:`.
- Use `logging` instead of `print()` for production code.

### 3. Pythonic Patterns
- Use list comprehensions where appropriate.
- Avoid mutable default arguments (`def f(a=[])`).
- Use `isinstance()` for type checks.

### 4. Project Specifics (Streamlit/RAG)
- **Streamlit**: Proper use of `st.cache_data` and `st.cache_resource`.
- **RAG**: Ensure embedding models and vector DB connections are handled as resources.

## Diagnostic Commands
```bash
ruff check .
mypy .
pytest --cov
```

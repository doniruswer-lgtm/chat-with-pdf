---
name: tdd-workflow
description: Use this skill when writing new features, fixing bugs, or refactoring code. Enforces test-driven development using pytest.
origin: ECC (everything-claude-code)
---

# Python Test-Driven Development Workflow

This skill ensures all code development follows TDD principles using `pytest`.

## When to Activate
- Writing new features or functionality
- Fixing bugs or issues
- Refactoring existing code
- Adding API endpoints or Streamlit components

## Core Principles
1. **Tests BEFORE Code**: ALWAYS write tests first in `tests/` directory.
2. **Coverage**: Aim for 80%+ coverage using `pytest-cov`.
3. **Red-Green-Refactor**: Write a failing test, make it pass, then clean up.

## TDD Steps (Python)

### Step 1: Write a failing test
Create a file in `tests/test_feature.py`:
```python
def test_new_functionality():
    from src.module import new_func
    assert new_func(target) == expected_result
```

### Step 2: Run tests (Should fail)
```bash
pytest tests/test_feature.py
```

### Step 3: Implement minimal code
Update `src/module.py`:
```python
def new_func(val):
    return expected_result # Minimal to pass
```

### Step 4: Run tests again (Should pass)
```bash
pytest tests/test_feature.py
```

### Step 5: Refactor
Clean up the implementation while ensuring `pytest` remains green.

## Best Practices
- Use `pytest.mark.parametrize` for multiple scenarios.
- Use `unittest.mock` or `pytest-mock` for external dependencies.
- Keep tests isolated and fast.

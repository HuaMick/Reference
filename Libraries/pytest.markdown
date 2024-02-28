### Pytest

**Run a specific test**
```
pytest \
--no-cov \
-W ignore::DeprecationWarning \
<Path to test>::<test function name>
```

pytest \
--no-cov \
-W ignore::DeprecationWarning \
tests/test_cm_api.py;

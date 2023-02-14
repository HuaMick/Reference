

  - Owner's credentials : let other users access the data using the credential owner's authorization.
  - Viewers credentials : rely on each individual report viewer's credentials to access the data.
  - Service account credentials : rely on a special type of Google account representing a non-human user that can be authenticated and authorized to access data.

The maximum period for caching in Data Studio is 12 hours.

Caching is not supported if:
  - query uses non-deterministic functions (CURRENT_TIMESTAMP() and NOW()).
  - query using a wildcard.
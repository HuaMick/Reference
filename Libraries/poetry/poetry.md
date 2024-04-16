poetry config virtualenvs.create true
poetry env use 3.11
poetry shell
poetry self add keyrings-google-artifactregistry-auth
poetry config http-basic.ldr oauth2accesstoken $(gcloud auth print-access-token)
poetry install

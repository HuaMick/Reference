grant-user-permissions:
	-gcloud projects add-iam-policy-binding $(GCP_PROJECT) \
		--member=user:$() \
		--role=roles/viewer \
		--impersonate-service-account=$(OWNER_ACCOUNT)
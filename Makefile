IMAGE_NAME 	:=	cirocosta/verbose-git-resource

.PHONY: image publish

image:
	docker build -t $(IMAGE_NAME) .

publish: image
	docker push $(IMAGE_NAME)

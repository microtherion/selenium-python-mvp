#
# Makefile
#
SELENIUM       := 4.22.0
PYTHON_VERSION := 3.12
REVISION       := 20240623
PLATFORM       := linux/amd64,linux/arm64
PYTHON_EXTRAS  :=
APT_EXTRAS     := make
IMAGE          := microtherion/selenium-python-mvp
TAG            := $(IMAGE):$(SELENIUM)-py$(PYTHON_VERSION)-$(REVISION)

default:
	docker build \
		--build-arg SELENIUM=$(SELENIUM) --build-arg PYTHON_VERSION=$(PYTHON_VERSION) \
		--build-arg APT_EXTRAS=$(APT_EXTRAS) --build-arg PYTHON_EXTRAS=$(PYTHON_EXTRAS) \
		--platform $(PLATFORM) --tag $(TAG) --tag $(IMAGE) .
	docker push $(TAG)
	docker push $(IMAGE)

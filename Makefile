#
# Makefile
#
SELENIUM       := 4.0.0a6.post2
PYTHON_VERSION := 3.8
REVISION       := 20200830
PYTHON_EXTRAS  :=
APT_EXTRAS     := make
IMAGE          := microtherion/selenium-python-mvp
TAG            := $(IMAGE):$(SELENIUM)-py$(PYTHON_VERSION)-$(REVISION)

default:
	docker build \
		--build-arg SELENIUM=$(SELENIUM) --build-arg PYTHON_VERSION=$(PYTHON_VERSION) --build-arg APT_EXTRAS=$(APT_EXTRAS) --build-arg PYTHON_EXTRAS=$(PYTHON_EXTRAS) \
		--tag $(TAG) --tag $(IMAGE) .
	docker push $(TAG)
	docker push $(IMAGE)

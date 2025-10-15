
.PHONY: build
build:
	docker image build --tag=pdm-unearth ./


.PHONY: show-installed-ref
show-installed-ref:
	docker container run --rm pdm-unearth bash -c 'head -v .venv/lib/python3.13/site-packages/doc8-*.dist-info/direct_url.json'

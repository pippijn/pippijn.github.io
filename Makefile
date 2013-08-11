# All content files.
INPUTS	:= $(shell find content -type f)
DIRS	:= $(patsubst content%,home%,$(shell find content -type d))
# POD files.
PODS	:= $(filter %.pod,$(INPUTS))
# HTML outputs.
HTML	:= $(patsubst content%,home%,$(PODS:.pod=.html))
# Additional non-preprocessed content.
DATA	:= $(patsubst content%,home%,$(filter-out %.pod,$(INPUTS)))

# Generator script and its dependencies.
DEPEND	:= generate $(shell find lib -type f) lib/wrapper.tt

upload: build
	@sed -i -e 's|"/home/|"/~pippijn/home/|g' $(HTML)
	rsync -avP --delete home ra:public_html/
	@sed -i -e 's|"/~pippijn/home/|"/home/|g' $(HTML)

build: $(PODS) $(DATA)
	./generate $(filter %.pod,$(PODS))
	find home -type f -exec chmod 0644 {} ';'
	find home -type d -exec chmod 0755 {} ';'

dirs: clean
	mkdir -p $(DIRS)

home/%: content/% dirs
	cp $< $@

clean:
	rm -rf home

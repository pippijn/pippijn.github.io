INPUTS	:= $(shell find content -type f)
OUTPUTS	:= $(patsubst content/%,home/%,$(INPUTS:.pod=.html))

build: $(OUTPUTS)
	find static home -type f -exec chmod 0644 {} ';'
	find static home -type d -exec chmod 0755 {} ';'

upload: build
	rsync -avP --delete static home ra:public_html/

home/%.html: content/%.pod generate $(shell find lib -type f)
	@mkdir -p $(@D)
	./generate $< > $@

home/%: content/%
	@mkdir -p $(@D)
	cp $< $@

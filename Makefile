INPUTS	:= $(shell find content -type f)
OUTPUTS	:= $(patsubst content/%,home/%,$(INPUTS:.pod=.html))

upload: build
	rsync -avP --delete static home ra:public_html/

build: $(OUTPUTS)
	find static home -type f -exec chmod 0644 {} ';'
	find static home -type d -exec chmod 0755 {} ';'

home/%.html: content/%.pod generate $(shell find lib -type f)
	@mkdir -p $(@D)
	./generate $< > $@

home/%: content/%
	@mkdir -p $(@D)
	cp $< $@

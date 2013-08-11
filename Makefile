upload: build
	@sed -i -e 's|"/home/|"/~pippijn/home/|g' $(HTML)
	rsync -avP --delete home ra:public_html/
	@sed -i -e 's|"/~pippijn/home/|"/home/|g' $(HTML)

PROJSRC	:= $(shell find ../../../*/*/.web -type f)

define copyproj

EXTERNAL += $(subst .web/,,$(patsubst ../../../%,external/projects/%,$1))
$(subst .web/,,$(patsubst ../../../%,external/projects/%,$1)): $1
	mkdir -p $$(@D)
	cp $$< $$@

endef

$(eval $(foreach P,$(PROJSRC),$(call copyproj,$P)))

include ../generator/generator.mk

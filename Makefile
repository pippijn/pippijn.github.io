upload: build
	@sed -i -e 's|"/home/|"/~pippijn/home/|g' $(HTML)
	rsync -avP --delete home ra:public_html/
	@sed -i -e 's|"/~pippijn/home/|"/home/|g' $(HTML)

PROJSRC	:= $(shell find ../../../*/*/extra/web -type f)

define copyproj

EXTERNAL += $(subst extra/web/,,$(patsubst ../../../%,external/projects/%,$1))
$(subst extra/web/,,$(patsubst ../../../%,external/projects/%,$1)): $1
	mkdir -p $$(@D)
	cp $$< $$@

endef

$(eval $(foreach P,$(PROJSRC),$(call copyproj,$P)))

#PROJDST	:= $(subst extra/web/,,$(patsubst ../../../%,external/projects/%,$(PROJWEB)))

include ../generator/generator.mk

#$(error $(INPUTS))

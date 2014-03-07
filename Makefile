FLAGS	= --projects
TARGET	= home

upload: build
	@sed -i -e 's|"/home/|"/~pippijn/home/|g' $(HTML)
	rsync -crlpvP --delete home isis:public_html/
	@sed -i -e 's|"/~pippijn/home/|"/home/|g' $(HTML)

include ../generator/generator.mk

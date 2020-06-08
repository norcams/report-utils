
.PHONY: default
default: centos fedora ubuntu debian

.PHONY: centos
centos:
	mkdir -p el/6/v1 el/7/v1 el/8/v1
	cat el/shebang src/imports.py el/imports.py src/common_functions.py \
	    el/check_updates.py src/payload.py el/updates_payload.py \
	    src/request.py > el/7/v1/report
	ln -sf ../../7/v1/report el/6/v1/report
	cat el/shebang_8 src/imports.py el/imports.py src/common_functions.py \
	    el/check_updates.py src/payload.py el/updates_payload.py \
	    src/request.py > el/8/v1/report

.PHONY: fedora
fedora:
	mkdir -p fedora/27/v1 fedora/28/v1 fedora/29/v1 fedora/30/v1 fedora/31/v1 fedora/32/v1
	cat fedora/shebang src/imports.py fedora/imports.py \
	    src/common_functions.py fedora/check_updates.py src/payload.py \
	    fedora/updates_payload.py src/request.py > fedora/28/v1/report
	ln -sf ../../28/v1/report fedora/27/v1/report
	ln -sf ../../28/v1/report fedora/29/v1/report
	ln -sf ../../28/v1/report fedora/30/v1/report
	ln -sf ../../28/v1/report fedora/31/v1/report
	ln -sf ../../28/v1/report fedora/32/v1/report

.PHONY: ubuntu
ubuntu:
	mkdir -p ubuntu/16/v1 ubuntu/17/v1 ubuntu/18/v1 ubuntu/19/v1 ubuntu/20/v1
	cat ubuntu/shebang src/imports.py ubuntu/imports.py \
	src/common_functions.py ubuntu/check_updates_functions.py \
	src/payload.py ubuntu/updates_payload.py src/request.py \
	> ubuntu/18/v1/report
	ln -sf ../../18/v1/report ubuntu/20/v1/report
	ln -sf ../../18/v1/report ubuntu/19/v1/report
	ln -sf ../../18/v1/report ubuntu/17/v1/report
	ln -sf ../../18/v1/report ubuntu/16/v1/report

.PHONY: debian
debian:
	mkdir -p debian/9/v1 debian/10/v1
	cat debian/shebang src/imports.py debian/imports.py \
	src/common_functions.py debian/check_updates_functions.py \
	src/payload.py debian/updates_payload.py src/request.py \
	> debian/9/v1/report
	ln -sf ../../10/v1/report debian/9/v1/report

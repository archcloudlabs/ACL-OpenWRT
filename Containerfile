FROM archlinux
# Setup environment with build tools
RUN pacman -Syy && \
	yes | pacman -Sy --needed base-devel autoconf automake bash binutils bison \
	bzip2 fakeroot file findutils flex gawk gcc gettext git grep groff \
	gzip libelf libtool libxslt m4 make ncurses openssl patch pkgconf \
	python python-distutils-extra rsync sed texinfo time unzip util-linux wget which zlib \
	asciidoc help2man intltool perl-extutils-makemaker swig vim tmux

WORKDIR /opt/
RUN git clone https://git.openwrt.org/openwrt/openwrt.git && \
	/opt/openwrt/scripts/feeds update -a && \
	/opt/openwrt/scripts/feeds install -a

ENTRYPOINT ["/bin/bash"]

# $NetBSD$
#

REVISION=	20151229
DISTNAME=	liveimage-pkgs-opt-${REVISION}
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	tsutsui@NetBSD.org
COMMENT=	Meta-package of optional binaries for the teokure live image

META_PACKAGE=	yes
.include "../../mk/bsd.prefs.mk"

# multimedia
DEPENDS+=	gnash-[0-9]*:../../multimedia/gnash
DEPENDS+=	alsa-utils-[0-9]*:../../audio/alsa-utils
DEPENDS+=	alsa-plugins-oss-[0-9]*:../../audio/alsa-plugins-oss
DEPENDS+=	mpg123-[0-9]*:../../audio/mpg123
DEPENDS+=	lame-[0-9]*:../../audio/lame

# inputmethod
#  anthy
DEPENDS+=	anthy-[0-9]*:../../inputmethod/anthy
DEPENDS+=	anthy-elisp-[0-9]*:../../inputmethod/anthy-elisp
DEPENDS+=	ibus-anthy-[0-9]*:../../inputmethod/ibus-anthy
# uim
DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
DEPENDS+=	uim-elisp-[0-9]*:../../inputmethod/uim-elisp
DEPENDS+=	uim-mozc-[0-9]*:../../inputmethod/uim-mozc
# wnn
DEPENDS+=	ja-FreeWnn-lib-[0-9]*:../../inputmethod/ja-freewnn-lib
DEPENDS+=	ja-FreeWnn-server-[0-9]*:../../inputmethod/ja-freewnn-server
# canna
DEPENDS+=	Canna-lib-[0-9]*:../../inputmethod/canna-lib
DEPENDS+=	Canna-[0-9]*:../../inputmethod/canna

# wm
DEPENDS+=	awesome-[0-9]*:../../wm/awesome
DEPENDS+=	fvwm-[0-9]*:../../wm/fvwm
DEPENDS+=	icewm-[0-9]*:../../wm/icewm

# fonts
DEPENDS+=	jisx0212fonts-[0-9]*:../../fonts/jisx0212fonts
DEPENDS+=	jisx0213fonts-[0-9]*:../../fonts/jisx0213fonts
DEPENDS+=	ipaexfont-[0-9]*:../../fonts/ipaexfont
DEPENDS+=	freefont-ttf-[0-9]*:../../fonts/freefont-ttf
DEPENDS+=	takao-fonts-ttf-[0-9]*:../../fonts/takao-fonts-ttf
DEPENDS+=	koruri-ttf-[0-9]*:../../fonts/koruri-ttf
# for ricty
DEPENDS+=	inconsolata-ttf-[0-9]*:../../fonts/inconsolata-ttf
DEPENDS+=	migu-ttf-[0-9]*:../../fonts/migu-ttf

# scm
DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base
DEPENDS+=	fossil-[0-9]*:../../devel/fossil
DEPENDS+=	mercurial-[0-9]*:../../devel/mercurial

# pkgtools
DEPENDS+=	pkgdiff-[0-9]*:../../pkgtools/pkgdiff
DEPENDS+=	pkglint-[0-9]*:../../pkgtools/pkglint
DEPENDS+=	pkg_rolling-replace-[0-9]*:../../pkgtools/pkg_rolling-replace

# admin
DEPENDS+=	sudo-[0-9]*:../../security/sudo

# tools
DEPENDS+=	nkf-[0-9]*:../../converters/nkf
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools

# editors
DEPENDS+=	bvi-[0-9]*:../../editors/bvi
DEPENDS+=	gedit-[0-9]*:../../editors/gedit
DEPENDS+=	leafpad-[0-9]*:../../editors/leafpad
DEPENDS+=	nano-[0-9]*:../../editors/nano
DEPENDS+=	vim-[0-9]*:../../editors/vim

# network
DEPENDS+=	curl-[0-9]*:../../www/curl
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	samba-[0-9]*:../../net/samba
DEPENDS+=	wget-[0-9]*:../../net/wget
DEPENDS+=	wireshark-[0-9]*:../../net/wireshark

# browser
DEPENDS+=	webkit-gtk-[0-9]*:../../www/webkit-gtk
DEPENDS+=	dillo-[0-9]*:../../www/dillo
DEPENDS+=	midori-[0-9]*:../../www/midori
DEPENDS+=	w3m-[0-9]*:../../www/w3m
# webkit-gtk is built with GCC_REQD=4.8 so explicitly prepare gcc48-libs too
.if (${OPSYS} == "NetBSD" && !empty(OS_VERSION:M6.*))
DEPENDS+=	gcc48-libs-[0-9]*:../../lang/gcc48-libs
.endif

# for demonstration
DEPENDS+=	xnp2-[0-9]*:../../emulators/xnp2
DEPENDS+=	onscripter-[0-9]*:../../games/onscripter

# archivers
DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unrar-[0-9]*:../../archivers/unrar
DEPENDS+=	unzip-[0-9]*:../../archivers/unzip
DEPENDS+=	zip-[0-9]*:../../archivers/zip

# for xm6i
DEPENDS+=	wxGTK30-[0-9]*:../../x11/wxGTK30

# emulators
DEPENDS+=	qemu-[0-9]*:../../emulators/qemu
DEPENDS+=	gxemul-[0-9]*:../../emulators/gxemul
DEPENDS+=	tme-[0-9]*:../../emulators/tme
DEPENDS+=	simh-[0-9]*:../../emulators/simh

# graphics
DEPENDS+=	xli-[0-9]*:../../graphics/xli
DEPENDS+=	libsixel-[0-9]*:../../graphics/libsixel
DEPENDS+=	netpbm-[0-9]*:../../graphics/netpbm
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
DEPENDS+=	shotwell-[0-9]*:../../graphics/shotwell
DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick
DEPENDS+=	${RUBY_PKGPREFIX}-gnome2-[0-9]*:../../meta-pkgs/ruby-gnome2

# for text console demo
DEPENDS+=	sl-[0-9]*:../../games/sl
DEPENDS+=	aview-[0-9]*:../../graphics/aview
#  for mikutterm plugin
DEPENDS+=	${RUBY_PKGPREFIX}-readline-[0-9]*:../../devel/ruby-readline
#  for sayaka (PHP twitter client)
DEPENDS+=	${PHP_PKG_PREFIX}-pdo-[0-9]*:../../databases/php-pdo_sqlite
DEPENDS+=	${PHP_PKG_PREFIX}-json-[0-9]*:../../textproc/php-json
DEPENDS+=	${PHP_PKG_PREFIX}-curl-[0-9]*:../../www/php-curl

# pdf viewers
DEPENDS+=	evince-[0-9]*:../../print/evince
DEPENDS+=	epdfview-[0-9]*:../../print/epdfview

# documents
DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
DEPENDS+=	${RUBY_PKGPREFIX}-rabbit-[0-9]*:../../graphics/rabbit

# office
.if (${OPSYS} == "NetBSD" && !empty(OS_VERSION:M6.*))
DEPENDS+=	libreoffice43-[0-9]*:../../misc/libreoffice43
.else
DEPENDS+=	libreoffice-[0-9]*:../../misc/libreoffice
.endif

# RESTRICTED packages (NO_BIN_ON_FTP etc.)
#  These binary packages should be excluded on rsync xfers
DEPENDS+=	adobe-flash-plugin-[0-9]*:../../multimedia/adobe-flash-plugin11
DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer
DEPENDS+=	xv-[0-9]*:../../graphics/xv
DEPENDS+=	ricty-ttf-[0-9]*:../../fonts/ricty-ttf
DEPENDS+=	ms-ttf-[0-9]*:../../fonts/ms-ttf

.include "../../lang/php/phpversion.mk"
.include "../../lang/python/pyversion.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"

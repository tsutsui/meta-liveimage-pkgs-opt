# $NetBSD$
#

REVISION=	20140101
DISTNAME=	liveimage-pkgs-opt-${REVISION}
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	tsutsui@NetBSD.org
COMMENT=	Meta-package of optional binaries for the teokure live image

# inputmethod
#  anthy
DEPENDS+=	anthy-[0-9]*:../../inputmethod/anthy
DEPENDS+=	anthy-elisp-[0-9]*:../../inputmethod/anthy-elisp
DEPENDS+=	ibus-anthy-[0-9]*:../../inputmethod/ibus-anthy
# uim
DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
DEPENDS+=	uim-elisp-[0-9]*:../../inputmethod/uim-elisp

# wm
DEPENDS+=	awesome-[0-9]*:../../wm/awesome
DEPENDS+=	fvwm-[0-9]*:../../wm/fvwm
DEPENDS+=	icewm-[0-9]*:../../wm/icewm

# fonts
DEPENDS+=	jisx0212fonts-[0-9]*:../../fonts/jisx0212fonts
DEPENDS+=	jisx0213fonts-[0-9]*:../../fonts/jisx0213fonts
DEPENDS+=	ipaexfont-[0-9]*:../../fonts/ipaexfont

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
DEPENDS+=	bvi-[0-9]*:../../editors/bvi

# network
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	samba-[0-9]*:../../net/samba

# for demonstration
DEPENDS+=	xnp2-[0-9]*:../../emulators/xnp2
DEPENDS+=	onscripter-[0-9]*:../../games/onscripter

# for onscripter game archives
DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unzip-[0-9]*:../../archivers/unzip

# for xm6i
DEPENDS+=	wxGTK28-[0-9]*:../../x11/wxGTK28

# emulators
DEPENDS+=	qemu-[0-9]*:../../emulators/qemu
DEPENDS+=	gxemul-[0-9]*:../../emulators/gxemul
DEPENDS+=	tme-[0-9]*:../../emulators/tme
DEPENDS+=	simh-[0-9]*:../../emulators/simh

# graphics
DEPENDS+=	xli-[0-9]*:../../graphics/xli
DEPENDS+=	netpbm-[0-9]*:../../graphics/netpbm
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
DEPENDS+=	shotwell-[0-9]*:../../graphics/shotwell
DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick

# for text console demo
DEPENDS+=	sl-[0-9]*:../../games/sl
DEPENDS+=	w3m-[0-9]*:../../www/w3m
DEPENDS+=	curl-[0-9]*:../../www/curl
DEPENDS+=	${RUBY_PKGPREFIX}-tw-[0-9]*:../../net/ruby-tw
DEPENDS+=	aview-[0-9]*:../../graphics/aview

# pdf viewers
DEPENDS+=	evince-[0-9]*:../../print/evince
DEPENDS+=	epdfview-[0-9]*:../../print/epdfview

# documents
DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
DEPENDS+=	${RUBY_PKGPREFIX}-rabbit-[0-9]*:../../graphics/rabbit

# office
#DEPENDS+=	openoffice3-[0-9]*:../../misc/openoffice3
DEPENDS+=	libreoffice4-[0-9]*:../../misc/libreoffice4

# restricted
#DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer
#DEPENDS+=	xv-[0-9]*:../../graphics/xv

META_PACKAGE=	yes

.include "../../lang/python/pyversion.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD$
#

REVISION=	20240428
DISTNAME=	liveimage-pkgs-opt-${REVISION}
CATEGORIES=	meta-pkgs
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	tsutsui@NetBSD.org
COMMENT=	Meta-package of optional binaries for the teokure live image

META_PACKAGE=	yes
.include "../../mk/bsd.prefs.mk"

# multimedia
DEPENDS+=	alsa-utils-[0-9]*:../../audio/alsa-utils
DEPENDS+=	alsa-plugins-oss-[0-9]*:../../audio/alsa-plugins-oss
DEPENDS+=	alsa-plugins-pulse-[0-9]*:../../audio/alsa-plugins-pulse
DEPENDS+=	mpg123-[0-9]*:../../audio/mpg123
DEPENDS+=	mpg123-pulse-[0-9]*:../../audio/mpg123-pulse
DEPENDS+=	lame-[0-9]*:../../audio/lame
DEPENDS+=	flac123-[0-9]*:../../audio/flac123
DEPENDS+=	timidity-[0-9]*:../../audio/timidity
DEPENDS+=	sox-[0-9]*:../../audio/sox
DEPENDS+=	mpv-[0-9]*:../../multimedia/mpv
DEPENDS+=	gmplayer-[0-9]*:../../multimedia/gmplayer
DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer
DEPENDS+=	mencoder-[0-9]*:../../multimedia/mencoder

# inputmethod
#  anthy
DEPENDS+=	anthy-[0-9]*:../../inputmethod/anthy
DEPENDS+=	anthy-elisp-[0-9]*:../../inputmethod/anthy-elisp
DEPENDS+=	ibus-anthy-[0-9]*:../../inputmethod/ibus-anthy
# uim
DEPENDS+=	uim-[0-9]*:../../inputmethod/uim
.if ${MACHINE_ARCH} == "x86_64"
DEPENDS+=	uim-mozc-[0-9]*:../../inputmethod/uim-mozc
.else
DEPENDS+=	uim-mozc-[0-9]*:../../inputmethod/uim-mozc226
.endif
# wnn
DEPENDS+=	ja-FreeWnn-lib-[0-9]*:../../inputmethod/ja-freewnn-lib
DEPENDS+=	ja-FreeWnn-server-[0-9]*:../../inputmethod/ja-freewnn-server
# canna
DEPENDS+=	Canna-lib-[0-9]*:../../inputmethod/canna-lib
DEPENDS+=	Canna-[0-9]*:../../inputmethod/canna
DEPENDS+=	Canna-canuum-[0-9]*:../../inputmethod/canna-canuum
# kinput2
DEPENDS+=	kinput2-[0-9]*:../../inputmethod/kinput2
# tegaki
DEPENDS+=	tegaki-zinnia-japanese-[0-9]*:../../inputmethod/tegaki-zinnia-japanese

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
DEPENDS+=	misaki-fonts-[0-9]*:../../fonts/misaki-fonts
DEPENDS+=	noto-emoji-ttf-[0-9]*:../../fonts/noto-emoji-ttf
DEPENDS+=	mozilla-fonts-[0-9]*:../../fonts/mozilla-fonts
# for ricty
DEPENDS+=	inconsolata-ttf-[0-9]*:../../fonts/inconsolata-ttf
DEPENDS+=	migu-ttf-[0-9]*:../../fonts/migu-ttf

# scm
DEPENDS+=	git-perlscripts-[0-9]*:../../devel/git-perlscripts
DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base
DEPENDS+=	fossil-[0-9]*:../../devel/fossil
DEPENDS+=	mercurial-[0-9]*:../../devel/mercurial

# pkgtools
DEPENDS+=	pkgdiff-[0-9]*:../../pkgtools/pkgdiff
DEPENDS+=	pkglint-[0-9]*:../../pkgtools/pkglint
#DEPENDS+=	pkglint4-[0-9]*:../../pkgtools/pkglint4
DEPENDS+=	pkg_rolling-replace-[0-9]*:../../pkgtools/pkg_rolling-replace

# admin
DEPENDS+=	sudo-[0-9]*:../../security/sudo

# tools
DEPENDS+=	nkf-[0-9]*:../../converters/nkf
DEPENDS+=	cdrtools-[0-9]*:../../sysutils/cdrtools
DEPENDS+=	mtools-[0-9]*:../../sysutils/mtools
DEPENDS+=	smartmontools-[0-9]*:../../sysutils/smartmontools
DEPENDS+=	meld-[0-9]*:../../devel/meld
DEPENDS+=	arandr-[0-9]*:../../x11/arandr
DEPENDS+=	conky-[0-9]*:../../sysutils/conky

# editors
DEPENDS+=	bvi-[0-9]*:../../editors/bvi
DEPENDS+=	gedit-[0-9]*:../../editors/gedit
DEPENDS+=	leafpad-[0-9]*:../../editors/leafpad
DEPENDS+=	nano-[0-9]*:../../editors/nano
DEPENDS+=	poedit-[0-9]*:../../editors/poedit
DEPENDS+=	vim-[0-9]*:../../editors/vim

# network
DEPENDS+=	apache-[0-9]*:../../www/apache24
DEPENDS+=	curl-[0-9]*:../../www/curl
DEPENDS+=	rsync-[0-9]*:../../net/rsync
DEPENDS+=	samba-[0-9]*:../../net/samba4
DEPENDS+=	wget-[0-9]*:../../net/wget
DEPENDS+=	wireshark-[0-9]*:../../net/wireshark
DEPENDS+=	youtube-dl-[0-9]*:../../net/youtube-dl
DEPENDS+=	yt-dlp-[0-9]*:../../net/yt-dlp
DEPENDS+=	wpa_gui-[0-9]*:../../net/wpa_gui

# mail
DEPENDS+=	sendmail-[0-9]*:../../mail/sendmail
DEPENDS+=	cyrus-sasl-[0-9]*:../../security/cyrus-sasl
DEPENDS+=	cy2-crammd5-[0-9]*:../../security/cy2-crammd5
DEPENDS+=	cy2-digestmd5-[0-9]*:../../security/cy2-digestmd5
DEPENDS+=	cy2-login-[0-9]*:../../security/cy2-login
DEPENDS+=	cy2-plain-[0-9]*:../../security/cy2-plain
DEPENDS+=	fetchmail-[0-9]*:../../mail/fetchmail

# browser
DEPENDS+=	dillo-[0-9]*:../../www/dillo
DEPENDS+=	midori-[0-9]*:../../www/midori
DEPENDS+=	w3m-[0-9]*:../../www/w3m
#  H264 might require gst ffmpeg plugin
DEPENDS+=	gst-plugins1-libav-[0-9]*:../../multimedia/gst-plugins1-libav
DEPENDS+=	gst-plugins1-good-[0-9]*:../../multimedia/gst-plugins1-good

# for demonstration
DEPENDS+=	xengine-[0-9]*:../../benchmarks/xengine
DEPENDS+=	xnp2-[0-9]*:../../emulators/xnp2
DEPENDS+=	onscripter-[0-9]*:../../games/onscripter
DEPENDS+=	PC6001VX-[0-9]*:../../emulators/PC6001VX
DEPENDS+=	xm8-[0-9]*:../../emulators/xm8
DEPENDS+=	xclannad-[0-9]*:../../games/xclannad
DEPENDS+=	xkanon-[0-9]*:../../games/xkanon
DEPENDS+=	xmris-[0-9]*:../../games/xmris
DEPENDS+=	freeglut-[0-9]*:../../graphics/freeglut
DEPENDS+=	xlockmore-[0-9]*:../../x11/xlockmore
DEPENDS+=	xearth-[0-9]*:../../x11/xearth

# archivers
DEPENDS+=	lhasa-[0-9]*:../../archivers/lhasa
DEPENDS+=	unrar-[0-9]*:../../archivers/unrar
DEPENDS+=	unzip-[0-9]*:../../archivers/unzip
DEPENDS+=	zip-[0-9]*:../../archivers/zip

# for xm6i and nono
DEPENDS+=	wxGTK32-[0-9]*:../../x11/wxGTK32

# emulators
DEPENDS+=	qemu-[0-9]*:../../emulators/qemu
DEPENDS+=	gxemul-[0-9]*:../../emulators/gxemul
DEPENDS+=	tme-[0-9]*:../../emulators/tme
DEPENDS+=	open-simh-[0-9]*:../../emulators/open-simh

# graphics
DEPENDS+=	xli-[0-9]*:../../graphics/xli
DEPENDS+=	libsixel-[0-9]*:../../graphics/libsixel
DEPENDS+=	netpbm-[0-9]*:../../graphics/netpbm
DEPENDS+=	sxiv-[0-9]*:../../graphics/sxiv
DEPENDS+=	nsxiv-[0-9]*:../../graphics/nsxiv
DEPENDS+=	gifsicle-[0-9]*:../../graphics/gifsicle
DEPENDS+=	gimp-[0-9]*:../../graphics/gimp
#DEPENDS+=	shotwell-[0-9]*:../../graphics/shotwell
DEPENDS+=	geeqie-[0-9]*:../../graphics/geeqie
DEPENDS+=	apngasm-[0-9]*:../../graphics/apngasm
DEPENDS+=	ImageMagick-[0-9]*:../../graphics/ImageMagick
DEPENDS+=	${RUBY_PKGPREFIX}-gnome-[0-9]*:../../meta-pkgs/ruby-gnome
DEPENDS+=	gnome-icon-theme-extras-[0-9]*:../../graphics/gnome-icon-theme-extras
DEPENDS+=	gnome-icon-theme-symbolic-[0-9]*:../../graphics/gnome-icon-theme-symbolic
DEPENDS+=	raleigh-reloaded-[0-9]*:../../graphics/raleigh-reloaded

# for text console demo
DEPENDS+=	sl-[0-9]*:../../games/sl
DEPENDS+=	aview-[0-9]*:../../graphics/aview
#  for mikutterm plugin
DEPENDS+=	${RUBY_PKGPREFIX}-readline-[0-9]*:../../devel/ruby-readline
DEPENDS+=	${RUBY_PKGPREFIX}-slack-api-[0-9]*:../../net/ruby-slack-api

# SNS clients
DEPENDS+=	sayaka-[0-9]*:../../net/sayaka
DEPENDS+=	nanotodon-[0-9]*:../../net/nanotodon

# pdf viewers
DEPENDS+=	evince-[0-9]*:../../print/evince
DEPENDS+=	epdfview-[0-9]*:../../print/epdfview

# documents
DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx
DEPENDS+=	${RUBY_PKGPREFIX}-rabbit-[0-9]*:../../graphics/rabbit
DEPENDS+=	netbsd-www-[0-9]*:../../meta-pkgs/netbsd-www

# office
DEPENDS+=	libreoffice-[0-9]*:../../misc/libreoffice

# linux binary emulation
DEPENDS+=	suse-[0-9]*:../../meta-pkgs/suse131
DEPENDS+=	libreoffice6-bin-[0-9]*:../../misc/libreoffice6-bin

# RESTRICTED packages (NO_BIN_ON_FTP etc.)
#  These binary packages should be excluded on rsync xfers
DEPENDS+=	nono-[0-9]*:../../emulators/nono
DEPENDS+=	xv-[0-9]*:../../graphics/xv
DEPENDS+=	ms-ttf-[0-9]*:../../fonts/ms-ttf
DEPENDS+=	xbat-[0-9]*:../../games/xbat

.include "../../lang/php/phpversion.mk"
.include "../../lang/python/pyversion.mk"
.include "../../lang/ruby/rubyversion.mk"
.include "../../mk/bsd.pkg.mk"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

RDEPENDS_${PN} += " \
		  parted \
		  e2fsprogs-mke2fs \
		 "

SRC_URI += " \
	file://init-install-infosec.sh \
	"

do_install() {
	install -m 0755 ${WORKDIR}/init-install-infosec.sh ${D}/install.sh
}


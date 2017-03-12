FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://init-live-infosec.sh \
	"

do_install() {
    install -m 0755 ${WORKDIR}/init-live-infosec.sh ${D}/init
}

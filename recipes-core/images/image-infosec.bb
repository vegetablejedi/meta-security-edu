DESCRIPTION = "A Infosec security platform image"

IMAGE_FEATURES += "splash ssh-server-openssh package-management"

IMAGE_INSTALL = "\
    packagegroup-core-boot \
    packagegroup-core-full-cmdline \
    ${CORE_IMAGE_EXTRA_INSTALL} \
    opkg \
    cryptsetup \
    "

set_root_password() {
	sed 's%^root:[^:]*:%root:$6$rklTkYCjD1f$JDNzzzLwsL7xiLusE7Kg8LbxAqlF7Ibe4X9ztTKNKIzL1jEmbeEaJbUi90ulkzLOOgNl862Y5hOQUDaNyKPkS0:%' < ${IMAGE_ROOTFS}/etc/shadow > ${IMAGE_ROOTFS}/etc/shadow.new
	mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow
}

mklink_lib_lib64() {
	ln -fs /lib ${IMAGE_ROOTFS}/lib64
}

ROOTFS_POSTPROCESS_COMMAND += "set_root_password; "
SPLASH = "psplash"

inherit core-image

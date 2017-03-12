FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
        file://crypto.cfg \
        "
#KBRANCH_secuix86-64  = "standard/common-pc-64/base"
#KMACHINE_secuix86-64 ?= "common-pc-64"
#SRCREV_machine_secuix86-64 ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
#COMPATIBLE_MACHINE_secuix86-64 = "secuix86-64"

#KBRANCH_Lanner-FW  = "standard/common-pc-64/base"
#KMACHINE_Lanner-FW ?= "common-pc-64"
#SRCREV_machine_Lanner-FW ?= "dbe5b52e93ff114b2c0f5da6f6af91f52c18f2b8"
#COMPATIBLE_MACHINE_Lanner-FW = "Lanner-FW"

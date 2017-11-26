FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PYTHON_RDEPS += " \
	python-service-identity \
"

SRC_URI_append_dm800 = " \
    file://e2_old_dvbapi.patch \
"

inherit upx_compress

SRC_URI_append += " \
	file://use-ioctl-22-for-h265.patch \
	file://fix-fp-version.patch \
	file://tryfix-videomode.patch \
	file://tryfix-snr-si216x-tuners.patch \
	file://dual-tuner-letter-detection.patch \
	file://add-skin_display-dm9x0.patch \
"

SRC_URI_append_dm8000 += " \
    file://fix-wrong-driver-date.patch \
"

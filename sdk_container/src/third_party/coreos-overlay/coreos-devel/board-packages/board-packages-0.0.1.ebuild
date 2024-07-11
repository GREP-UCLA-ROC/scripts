# Copyright 2013 The CoreOS Authors
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

DESCRIPTION="Meta ebuild for building all binary packages."
HOMEPAGE="http://coreos.com/docs/sdk/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm64"
IUSE=""

# Depend on everything OEMs need, but not the OEMs themselves.
# This makes the built packages available for image_vm_util.sh but
# avoids copying the oem specific files (e.g. grub configs) before
# the oem partition is set up.
DEPEND=""
RDEPEND="
	amd64? (
		app-emulation/google-compute-engine
		app-emulation/open-vm-tools
		coreos-base/nova-agent-container
		coreos-base/nova-agent-watcher
	)
	sys-boot/grub
	app-containers/containerd
	app-containers/docker
	app-containers/docker-cli
	app-emulation/amazon-ssm-agent
	app-emulation/wa-linux-agent
	coreos-base/coreos
	coreos-base/coreos-dev
	coreos-base/flatcar-eks
	net-misc/chrony
	sys-fs/zfs
	app-containers/podman
	net-misc/passt
	dev-lang/python
	dev-python/pip
	x11-base/xorg-drivers
	x11-base/xorg-server
    x11-misc/dmenu
	x11-misc/i3lock
	x11-misc/i3status
	x11-misc/xclip
	x11-misc/xcompmgr
	x11-terms/st
	x11-wm/i3
	app-crypt/pinentry
	media-sound/alsa-utils
	media-gfx/scrot
	media-gfx/feh
	app-shells/bash-completion
	app-text/tree
	net-wireless/iwd
	x11-drivers/xf86-video-qxl
	app-emulation/spice-vdagent
	x11-drivers/xf86-video-vesa
	x11-drivers/xf86-video-fbdev
	sys-apps/grep
	sys-apps/file
	"

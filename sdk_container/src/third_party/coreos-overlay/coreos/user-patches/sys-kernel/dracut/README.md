0000-change-network-dep-iscsi.patch
===================================

Add Flatcar specific patch to enable the iscsi module

Flatcar uses its own network module instead of the Dracut one, but the
iscsi module depends on the network. So, in order to enable the iscsi
module, we need to patch the dependency

0001-systemd-executor.patch
===========================

Systemd gained a new binary - systemd-executor - that's used to spawn
processes forked off systemd. Let's copy it into the initrd if it's
available.

0002-systemd-initrd-install-only-keymap-required-by-syste.patch
===============================================================

systemd-vconsole-setup needs the dracut i18n module so that the binary
loadkeys is present. The binary loadkeys comes from the kbd package.

A custom dracut module patch for i18n was created, so that only the
default `us` keymap and font are installed, leading the size increase
to the minimum of around a few KB instead of 3MB.

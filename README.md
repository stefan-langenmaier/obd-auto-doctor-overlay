# How to use this overlay

## with local overlays

[Local overlays](https://wiki.gentoo.org/wiki/Overlay/Local_overlay) should be managed via `/etc/portage/repos.conf/`.

```
[obd-auto-doctor-overlay]
location = /usr/local/portage/obd-auto-doctor-overlay
sync-type = git
sync-uri = https://github.com/stefan-langenmaier/obd-auto-doctor-overlay.git
priority=9999
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all our ebuilds available.

# Installation

After performing those steps, the following should work (or any other package from this overlay):

	sudo emerge -av media-gfx/obd-auto-doctor-bin

# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN=${PN%%-bin}
DIR_NAME=${MY_PN//-/}

inherit desktop

DESCRIPTION="OBD Auto Doctor is the leading car diagnostic software"
HOMEPAGE="https://www.obdautodoctor.com/"
SRC_URI="http://cdn.obdautodoctor.com/${MY_PN}_${PV}_amd64.tar.gz"

S="${WORKDIR}/${DIR_NAME}"

LICENSE="GPL-3 Creosys-EULA"

SLOT="0"

KEYWORDS="~amd64"

IUSE="-bluetooth"

RESTRICT="strip"

# TODO
RDEPEND=">=dev-qt/qtgui-5
	bluetooth? ( net-wireless/bluez )"

src_install() {
	dobin obdautodoctor
	domenu obdautodoctor.desktop
	doicon obdautodoctor.png
}

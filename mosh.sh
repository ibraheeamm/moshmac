#!/bin/sh
#credits to https://gist.github.com/luong-komorebi/834209c731a4bdb3f98748402556419f
alias fw='sudo /usr/libexec/ApplicationFirewall/socketfilterfw'


mosh_sym="$(which mosh-server)"
mosh_abs="$(greadlink -f $mosh_sym)"
# temporarily shut firewall off
fw --setglobalstate off

# add symlinked location to firewall
fw --add "$mosh_sym"
fw --add "$mosh_abs"

fw --unblockapp "$mosh_sym"
fw --unblockapp "$mosh_abs"
#re-enable firewall
fw --setglobalstate on

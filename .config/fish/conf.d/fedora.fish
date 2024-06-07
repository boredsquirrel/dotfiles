    # rpm-ostree

abbr rpmup 'rpm-ostree update'
abbr rpmrem 'rpm-ostree override remove'
abbr rpminst 'rpm-ostree update --install'
abbr rpmq "distrobox enter -n Fedora -- dnf search"
abbr rstat "rpm-ostree status"

abbr "ostree-kernel-arg" "rpm-ostree update kargs --editor"
alias layered="rpm-ostree status | grep Packages"

    # Update

alias update='flatpak update -y && rpm-ostree update && distrobox-upgrade --all && notify-send -a "Updates" "Updates feddich"'
abbr "remove-update" "sudo ostree admin undeploy 0 "
abbr "pin-this" "ostree admin pin 0"
alias upfin='update ; fwupdmgr upgrade -y ; shutdown -h now'

    # RPM
abbr rpmsums "rpm -Va --noconfig | grep '^..5'"
    #rpmsums - cryptographic verification of integrity via rpm. see: debsums package. No equivalent rpm-based package, rather the above function.
abbr rpmlist "rpm -qa"
abbr rpmfind "rpm -qa | grep"

    # Flatpak
alias flatup='flatpak update -y && notify-send -a "Flatpak" "Apps updated"'
abbr flatinst 'flatpak install -y'
abbr flatrm 'flatpak remove --delete-data'
abbr flatlist "flatpak list"
abbr flatfind "flatpak list | grep"
abbr flatq "flatpak search"

alias docker=podman

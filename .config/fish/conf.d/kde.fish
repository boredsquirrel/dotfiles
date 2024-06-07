### Wayland kde session
abbr startkde "startplasma-wayland"
abbr logout "qdbus org.kde.ksmserver /KSMServer logout 0 0 1"

abbr kwinbugs "journalctl --user-unit plasma-kwin_wayland --boot -1"

abbr reload-wayland "kwin_wayland --replace"

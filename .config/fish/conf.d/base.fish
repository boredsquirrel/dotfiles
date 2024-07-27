# empty fish greeting
set fish_greeting

set fish_prompt_pwd_full_dirs 3

#abbr sudo pkexec
#abbr sudo doas

set EDITOR helix
alias konsole="konsole --new-tab"

# base paths
set PATH /home/user/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/sbin:/var/home/user/.cargo/bin

# Rust
set PATH $PATH:/var/home/user/.cargo/bin

# Flatpaks
set PATH $PATH:/var/lib/flatpak/exports/bin

# edit and reload this config
alias conf="kate ~/.config/fish/conf.d/base.fish && source ~/.config/fish/conf.d/base.fish && echo 'Fish-config updated'"
alias reload="source ~/.config/fish/conf.d/* && echo 'Fish-config updated'"

#set xdg-downloads "~/Downloads"
#set xdg-documents "~/Documents"
#set xdg-images "~/Bilder"
#set xdg-music "~/Music"

alias downloads="cd $xdg-downloads"
alias documents="cd $xdg-documents"
alias images="cd $xdg-images"
alias music="cd $xdg-music"

abbr "q" "exit"
abbr gc "git clone"
abbr c "clear"

# Errors
abbr journal "journalctl -f"
#abbr errors-shutdown "journalctl -b -1"
abbr errors-boot "journalctl -b"
abbr errors-last-boot "journalctl -b -1"
abbr warnings "journalctl -f -p warning"
abbr err "journalctl -f --priority err"
abbr bootwarnings "journalctl -p -b warning"
abbr syslogs "tail -f /var/log/syslog"
abbr sysmsg "tail -f /var/log/messages"

abbr firmwareup "fwupdmgr update"

abbr off "shutdown -h now"

abbr rootfish "sudo fish"
# abbd rootfish "run0 /usr/bin/fish"

abbr english "export LANG=en_US.UTF-8"
abbr en english
alias "german"="sudo echo '%_install_langs en:en_US:C:de:de_DE' | tee -a /etc/rpm/macros && LANG=de_DE.UTF-8"

##### SYSTEM
alias pipwire-restart="systemctl --user restart pipewire.service"

. ~/.config/fish/functions/*
. ~/.config/fish/conf.d/*

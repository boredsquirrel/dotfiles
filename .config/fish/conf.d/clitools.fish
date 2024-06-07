### BASIC
 # Mkdir Create Parent Directories
abbr mkdir 'mkdir -v'

 # cd
abbr .. 'cd ..'
abbr .1 'cd ..'
abbr .2 'cd ../..'
abbr .3 'cd ../../..'

### CRYPTOGRAPHY
  # Checksums
abbr s1s 'sha1sum'
abbr s2s 'sha256sum'
abbr s5s 'sha512sum'
abbr m5s 'md5sum'

abbr s5h 'sha512hmac'
abbr s2h 'sha256hmac'
abbr s1h 'sha1hmac'

 # GPG PGP
abbr gpg-fingerprint 'gpg --import --import-options show-only'
 # Alternate: gpg-fp 'gpg --import --import-options show-only'
abbr g-ver 'gpg --verify'


### NETWORKING
abbr myip 'curl ifconfig.co'
abbr netlisten 'netstat -plntu'
abbr pingtest 'ping -c 2 wikipedia.de'

abbr httpcode "curl --head --silent --output /dev/null --write-out '%{http_code}' "

alias scurl="curl --tlsv1.3"

  # Downloads
abbr wgets 'wget --https-only --secure-protocol PFS' # PFS   Perfect Forward Secrecy.

### Yt-dlp
abbr yt-mp3 'yt-dlp -x --audio-format mp3'

### SECURITY
  # Malware Detection
  # Clam-AV
abbr clamsc 'clamscan -r -z -i --cross-fs yes --detect-pua yes --heuristic-alerts yes --alert-encrypted yes --max-filesize 3999M'
abbr clamup 'sudo freshclam && sudo clamav-unofficial-sigs'
#Note: clamav-unofficial-sigs may be named differently in a given distro
  #Lynis  - popular tool for checking security posture of your system.
abbr lynis-dryrun 'sudo lynis audit system --verbose --no-log'

### TERMINAL MISC

abbr history-off 'set +o history' #Disables history in current shell. Useful for reducing clutter in .bash_history .
abbr untar 'tar -xvf'


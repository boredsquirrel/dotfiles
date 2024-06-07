function copy
    if test -f $argv[1]
        cat $argv[1] | wl-copy
        echo "In Zwischenablage kopiert"
    else
        echo "Error: '$argv[1]' ist keine Datei!"
    end
end

function findmod
    set mod_path (whereis $argv[1] | cut -d' ' -f2)
    nano $mod_path;
end

function flatinfo
 set longname (flatpak search $argv() | sed -n '2p' | awk -F '\t' '{print $3}')
 flatpak info $longname
end

function mdtopdf -a filename
  set -x name (basename $filename .md)
  pandoc $filename -o $name.pdf | tee $name.pdf
end

function mdtoodt -a filename
  set -x name (basename $filename .md)
  pandoc $filename -o $name.odt | tee $name.odt
end

function mdtotex -a filename
  set -x name (basename $filename .md)
  pandoc $filename -s -o $name.tex | tee $name.tex
end

function tarbrot
    if test -z $argv[1]
        echo "Usage: tarbrot <folder>"
        return 1
    end

    set folder $argv[1]
    set tarball (basename $folder).tar
    set brotli_file $tarball.br

    # Start the timer
    set start_time (date +%s)

    # Create a tarball without compression
    tar -cf $tarball $folder

    # Display the time elapsed
    set end_time (date +%s)
    set elapsed_time (math $end_time - $start_time)

    # Compress the tarball with Brotli
    brotli $tarball && rm -f "$tarball"

    echo "Folder '$folder' has been tarred and Brotli compressed as '$brotli_file'"
    echo "Time elapsed: $elapsed_time seconds"
    echo "Size of compressed file: (du -h $brotli_file | awk '{print $1}')"
end

function gc
    git clone $argv; and cd (basename $argv .git)
end

function gp
    git pull $argv; and cd (basename $argv .git)
end

function copy_lines
    set word $argv[1]
    set file $argv[2]

    sed -n "/$word/p" $file | wl-copy
    echo "Lines including $word copied."
end

function cheat
  curl cheat.sh/$argv[1]
end

function findmod
    kate $(whereis "$argv")
end

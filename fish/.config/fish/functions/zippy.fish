function zippy
    if not test -d "$HOME/files/zippy"
        mkdir "$HOME/files/zippy"
    end

    for file in $argv
        set destination "$HOME/files/zippy/"(basename -- "$file")

        if test -e "$destination"
            set base (path basename "$file")
            set extension (path extension "$file")
            set stem (path change-extension "" "$base")
            set counter 1

            while test -e "$HOME/files/zippy/$stem"_"$counter""$extension"
                set counter (math $counter + 1)
            end

            set destination "$HOME/files/zippy/$stem"_"$counter""$extension"
        end

        cp -- "$file" "$destination"
    end
end

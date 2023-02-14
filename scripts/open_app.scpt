on run argv
    if application (item 1 of argv) is running then
        tell application (item 1 of argv) to activate
    else
        do shell script "open -na /Applications/(item 1 of argv).app/"
    end if
end run

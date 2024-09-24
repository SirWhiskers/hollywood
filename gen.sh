#!/bin/bash

# Create 50 files with random English names and various extensions
for i in {1..50}
do
    # Generate a random word for the file name
    word=$(shuf -n1 /usr/share/dict/words)
    
    # Randomly choose an extension from a predefined list
    extensions=("txt" "md" "csv" "jpg" "exe" "pdf" "zip" "html" "mp3" "mp4" "cpp" "js" "py" "dll" "bin" "log" "ini" "dat" "tar" "gif" "xml" "json" "sh" "bat" "class" "doc" "xls" "ppt" "mkv" "php" "bak" "so")
    random_ext=${extensions[$RANDOM % ${#extensions[@]}]}
    
    # Create the file with the generated name and random extension
    touch "$word.$random_ext"
done

echo "50 files with random names and extensions created!"

#!/bin/bash

# Root directory (change if needed)
ROOT_DIR="."

# Output file
OUTPUT_FILE="files_array.js"

echo "const filesArray = [" > "$OUTPUT_FILE"

# Loop through folders
for dir in "$ROOT_DIR"/*/; do
  [ -d "$dir" ] || continue
  echo "  [" >> "$OUTPUT_FILE"
  
  # Loop through HTML files in folder
  for file in "$dir"*.html; do
    [ -e "$file" ] || continue
    echo "    \"${file}\"," >> "$OUTPUT_FILE"
  done

  echo "  ]," >> "$OUTPUT_FILE"
done

echo "];" >> "$OUTPUT_FILE"

echo "Generated $OUTPUT_FILE"


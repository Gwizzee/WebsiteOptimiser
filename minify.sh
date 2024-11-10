#!/bin/bash

# --- Configuration ---
JS_FILES=("file1.js" "file2.js" "directory/file3.js")
CSS_FILES=("style1.css" "style2.css")
OUTPUT_JS="minified.js"
OUTPUT_CSS="minified.css"

# --- Function to minify files ---
minify_files() {
  # --- Concatenate and Minify JavaScript ---
  cat ${JS_FILES[@]} | uglifyjs > $OUTPUT_JS

  # --- Concatenate and Minify CSS ---
  cat ${CSS_FILES[@]} | csso > $OUTPUT_CSS

  echo "Files minified and concatenated successfully!"
}

# --- Initial minification ---
minify_files

# --- Watch for changes and re-minify ---
onchange "${JS_FILES[@]}" "${CSS_FILES[@]}" -- minify_files

# Website Optimiser
A command line script that automates the process of minifying and concatenating JavaScript and CSS files to optimise website performance.
 The script runs automatically runs when .css and javascript files are modified

#Prerequisites:

Node.js and npm: Make sure you have Node.js and npm installed. You can download them from the official Node.js website.

Installation:

1. **Clone the repository:** 
   ```bash
   git clone <repository_url>

   ## Install dependencies:

   Bash
npm install -g uglify-js csso onchange 

Usage:

Configure the script:

Open minify.sh

Update the JS_FILES and CSS_FILES arrays with the paths to your JavaScript and CSS files.

Modify OUTPUT_JS and OUTPUT_CSS to specify the desired output file names.

Run the script:

Bash
./minify.sh 

The script will:

Minify and concatenate the specified JavaScript files into minified.js.

Minify and concatenate the specified CSS files into minified.css.

Automatically re-minify and concatenate files whenever changes are saved.

How it Works:

Minification: uglifyjs is used to minify JavaScript, and csso is used to minify CSS.
Concatenation: The cat command combines the files.
Automation: onchange monitors the files and triggers re-minification upon any changes.

This project is licensed under the GNU GENERAL PUBLIC LICENSE Version 3.0



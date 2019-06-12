# Zerve

## Description
A primitive but functional puush clone over SSH. Upload a file to some remote 
server with `scp` and copy the resulting URL to the clipboard.

## Requirements
* python3
* python3-pip
* make

## Installation
Prepare a HTTP server on your host and configure the options at the top of 
`zerve` before installation.
`sudo make install` Installs the command line client utility.
`sudo make install-kde` Installs the command line client utility and adds an 
upload option to contextual menus for KDE users.

`clean` is a script that can be ran to delete uploads after some number of 
days. By default it looks in the `transient` directory and deletes after three 
days, modify this file to delete files in the relevant path for your server. 
Add this to your server's crontab to automate deletion. The `--standing` flag 
prevents deletion by this script.

## Usage
Use the command `zerve` plus a filename to upload it, see `zerve --help` for 
more information. KDE users can right click files and click the upload option, 
after the upload completes the link will be copied to the clipboard.

### Password protection
Add a password to your private key if this is desired.


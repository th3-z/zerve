# Zerve

## Description

A primitive puush clone over SSH. Upload a file to some remote server with `scp` and copy the resulting URL to the clipboard.


## Requirements
* Python3
* Pyperclip - `pip3 install pyperclip`

## Installation
Copy `zerve` to somewhere in your `PATH` on the local machine, install any HTTP server and SSH on the remote host.

### Dolphin file manager
I've provided context menu entries for KDE's Dolphin, `zerve-upload.desktop` and `zerve-delete.desktop`. These can be copied to `~/local/share/kservices5/ServiceMenu/` to add them to your context menu. 

### Automatic deletion
`clean` is a script that can be ran to delete uploads after some number of days. By default it looks in the `uploads` directory and deletes after three days, modification is trivial. Add this to your server's crontab to automate deletion.

## Configuration and usage
You will need some a HTTP server on the file server. Edit the constants in `zerve` to match your configuration:

* `REMOTE_HOST` - Domain name of remote server.
* `TARGET_ROOT` - Root directory of your HTTP server on `REMOTE_HOST`.
* `TARGET_LOCATION_TRANSIENT` - Relative path from `TARGET_ROOT` in which to store temporary uploads.
* `TARGET_LOCATION_STANDING` - Relative path from `TARGET_ROOT` in which to store permanent uploads.
* `USERNAME` - User with SSH access and write permissions to `TARGET_ROOT`/`TARGET_LOCATION`.
* `IDENTITY` - Location of SSH private key on local machine.

The basic use case just requires a filename as the first parameter, see the `--help` option for more information. If you installed the Dolphin service you can just right click on a file an select the upload option, the link will be copied to your clipboard.

### Password protection
Add a password to your private key if this is desired.


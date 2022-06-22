#!/bin/bash
# HestiaCP Dropbox Backup Setup
# Create App: https://www.dropbox.com/developers/apps and get access token
cd /
mkdir dropbox
cd dropbox
curl "https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh" -o dropbox-uploader.sh
chmod +x dropbox-uploader.sh
curl "https://raw.githubusercontent.com/maskoid/vestacustom/master/backup/send_site_backup_files_to_dropbox.sh" -o /usr/local/hestia/bin/push-to-dropbox.sh
chmod 755 /usr/local/hestia/bin/push-to-dropbox.sh
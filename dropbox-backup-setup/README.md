# Setup HestiaCP Backup with Dropbox

Welcome to tutorial titled **Setup HestiaCP Backup with Dropbox.** with this tutorial you can upload your hestiacp backup on dropbox regularly and automatically.

You need first create application on dropbox, for create application follow below link and get access token: [Dropbox Application](https://www.dropbox.com/developers/apps) .

## 1. Download Dropbox Script

```
sudo curl "https://github-cdn.stdo.in/hestiacp/backup.sh" -o backup.sh
```

* Run below command for install

```
sudo bash backup.sh
```

## 2. Provide Access Token

Run below command for connect your server to dropbox for mapping backup directory.

* When you run command then file ask you app key, secret key and access token.

```
/dropbox/dropbox-uploader.sh
```

## 3. Test Time

All are done now, for make sure everything is perfect run below command.

* When you run below file, then you will see output like **DONE** or **FAIL** with error and if process is done then you can see backup file under dropbox folder named whatever you set during application creation time.

```
/dropbox/dropbox-uploader.sh upload "backup.sh" /
```

## 4. Create Cron Job to run everyday

Final step is to setup cronjob on hestiacp for upload backup regularly.

* Login your HestiaCP server as Admin.
* Go to **CRON** then click **Add Job.**
* Add below code and set your cronjob run time.

```
sudo /usr/local/hestia/bin/push-to-dropbox.sh
```

**That's It ! All are done, now you can use your HestiaCP, all users backup will upload on dropbox.**

This is a loose collection of scripts (win, linux) to download content from the ILIAS e-Learning platform (tested @ TH KÖLN).

## davfs2 and rsync

#### 1) install davfs2 and rsync


#### 2) add to `/etc/fstab`
`https://ilias.th-koeln.de/webdav.php/ILIAS_FH_Koeln/ref_1456968/ /mnt/th/DB2 davfs user,rw,noauto 0 0`


#### 3) crontab
`5 7-22 * * * bash ~/sync_th.sh >/dev/null 2>&1`
run sync at 7:05, 8:05 ..., 22:05 every day

#### 4) `th_sync.sh`
`/usr/bin/mount /mnt/th/DB2`
`rsync --update -raz  --exclude 'lost+found' --progress /mnt/th/DB2/ ~/th/DB2/`
`/usr/bin/umount /mnt/th/DB2`



## Windows

edit values: 'fach', 'ref', 'dl_path', 'p4ssw0rd' and 'campusId'

Eg: `DB2: 1456968`

___

### wget script (deprecated?)

  * Set *username* and *password*
  * Place your desired *refs* in the array __refs__
  * Place the correspoding *names* in the array __names__

Eg:
| names | refs    |
|-------|---------|
| AM    | 683143  |
| SM    | 1140868 | 

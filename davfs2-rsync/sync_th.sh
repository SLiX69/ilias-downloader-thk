
/usr/bin/mount /mnt/th/DB2
rsync --update -raz --exclude 'lost+found' --progress /mnt/th/DB2/ ~/th/DB2/
/usr/bin/umount /mnt/th/DB2

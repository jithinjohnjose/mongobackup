######### Shell script for mongodb backup automation ###########

                       ***BY Jithin John Jose***

Baccking up your MongoDB database nightly is a good practice to ensure the safety of your data should something happen to your server. Obviously, keeping a copy of everything somewhere other than your database server is a great way to make sure that, in the event something happens, you can restore and get back running quickly.

Many hosts will offer backup services as a paid service, buy why pay when you can easily set up automatic nightly backups of your database on your own, in just a few minutes.

Here’s the brief overview of what we’re going to do:

1)Create a script that automatically creates a backup directory for the current date, and exports your MongoDB database to that directory.

2)Put that script on a server that can run cron scripts for you

3)Set up cron to nightly run the script to execute the backup

4) Restore mongo database using : sudo mongorestore --db <dbname> --username <username> --password <password> --drop $DEST

NB : To set mongo username and password refer : https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-mongodb-on-ubuntu-16-04

git clone "https://github.com/RedBoardDev/hiveos-auto_update.git"
cd hiveos-auto_update
chmod 700 auto_update.sh

mkdir log/

echo "# Hiveos - Auto update" >> /hive/etc/crontab.root
echo "00 */1 * * * /home/user/hiveos-auto_update/auto_update.sh >> /home/user/hiveos-auto_update/log/log.log" >> /hive/etc/crontab.root

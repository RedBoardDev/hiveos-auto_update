git clone "https://github.com/cryptopoo/hiveos_gddr6x_temps/archive/refs/tags/v1.2.0.tar.gz"
cd hiveos-auto_update

mkdir log/

echo "# Hiveos - Auto update" >> /hive/etc/crontab.root
echo "00 */1 * * * /home/user/hiveos-auto_update/auto_update.sh >> /home/user/hiveos-auto_update/log/log.log" >> /hive/etc/crontab.root

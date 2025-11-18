#!/bin/bash

DB_NAME="clt"

mongoimport --db $DB_NAME --collection Booking --drop --file Booking.json --jsonArray
mongoimport --db $DB_NAME --collection Student --drop --file Student.json --jsonArray
mongoimport --db $DB_NAME --collection User --drop --file User.json --jsonArray
mongoimport --db $DB_NAME --collection MainCourse --drop --file MainCourse.json --jsonArray
mongoimport --db $DB_NAME --collection Notification --drop --file Notification.json --jsonArray
mongoimport --db $DB_NAME --collection Course --drop --file Course.json --jsonArray

echo "Database restored successfully!"

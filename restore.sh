#!/bin/bash

DB_NAME="clt"
USER="delta"
PASS="123"

mongoimport --db "$DB_NAME" --collection Booking --drop --file Booking.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

mongoimport --db "$DB_NAME" --collection Student --drop --file Student.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

mongoimport --db "$DB_NAME" --collection User --drop --file User.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

mongoimport --db "$DB_NAME" --collection MainCourse --drop --file MainCourse.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

mongoimport --db "$DB_NAME" --collection Notification --drop --file Notification.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

mongoimport --db "$DB_NAME" --collection Course --drop --file Course.json --jsonArray \
  --username "$USER" --password "$PASS" --authenticationDatabase admin

echo "Database restored successfully!"

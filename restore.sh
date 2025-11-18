#!/bin/bash

DB_NAME="clt"
USER="delta"
PASS="123"
HOST="82.25.109.155"
PORT="27017"
AUTH_DB="admin"

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection bookings --drop --file Booking.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection students --drop --file Student.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection users --drop --file User.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection maincourses --drop --file MainCourse.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection notifications --drop --file Notification.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection courses --drop --file Course.json --jsonArray

echo "Database restored successfully!"

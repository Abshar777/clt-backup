#!/bin/bash

DB_NAME="clt"
USER="delta"
PASS="123"
HOST="82.25.109.155"
PORT="27017"
AUTH_DB="admin"

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection Booking --drop --file Booking.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection Student --drop --file Student.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection User --drop --file User.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection MainCourse --drop --file MainCourse.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection Notification --drop --file Notification.json --jsonArray

mongoimport --host "$HOST" --port "$PORT" \
  --username "$USER" --password "$PASS" --authenticationDatabase "$AUTH_DB" \
  --db "$DB_NAME" --collection Course --drop --file Course.json --jsonArray

echo "Database restored successfully!"

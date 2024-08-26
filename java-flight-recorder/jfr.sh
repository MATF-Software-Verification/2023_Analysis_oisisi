#!/bin/bash

# Pokrenuti projekat pre pokretanja ove skripte

# Nalaženje PID-a aplikacije
PID=$(jps | grep 'MainApp' | awk '{print $1}')

# Provera da li je PID pronađen
if [ -z "$PID" ]; then
    echo "Greška: Nije pronađen PID za MainApp."
    exit 1
fi

echo "PID za MainApp je: $PID"

# Pokretanje Java Flight Recorder (JFR) za taj PID
DURATION=300s
FILENAME="flight.jfr"
jcmd $PID JFR.start duration=$DURATION filename=$FILENAME

if [ $? -eq 0 ]; then
  echo "JFR pokrenut. Snimanje ce trajati $DURATION."
else
  echo "Doslo je do greske prilikom pokretanja JFR-a."
  exit 1
fi

# Otvaranje izvestaja u java mission control
jmc $FILENAME &


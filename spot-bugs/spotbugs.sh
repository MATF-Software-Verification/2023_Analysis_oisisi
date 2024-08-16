#!/bin/bash

# Putanja do SpotBugs direktorijuma
SPOTBUGS_HOME="./spotbugs-4.7.3"

# Direktorijum projekta
PROJECT_DIR="."

# Direktorijum gde su izgrađeni class fajlovi 
CLASS_DIR="$PROJECT_DIR/bin"

# Izlazni fajl za izveštaj
REPORT_FILE="$PROJECT_DIR/spotbugs_report.html"

# Provera da li CLASS_DIR postoji, i upozorenje ukoliko ne postoji
if [ ! -d "$CLASS_DIR" ]; then
    echo "Greska: Direktorijum $CLASS_DIR ne postoji."
    exit 1
fi

# Pokretanje SpotBugs-a
"$SPOTBUGS_HOME/bin/spotbugs" -textui -html -output "$REPORT_FILE" -effort:max -low "$CLASS_DIR"

# Provera da li se SpotBugs uspešno završio
if [ $? -eq 0 ]; then
    echo "SpotBugs analiza je uspesno zavrsena."
    echo "Izvestaj je generisan u $REPORT_FILE"
else
    echo "Greska prilikom SpotBugs analize."
fi


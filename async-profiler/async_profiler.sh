#!/bin/bash

# Pokrenuti aplikaciju pre pokretanja ove skripte

# Nalaženje PID-a aplikacije
PID=$(jps | grep 'MainApp' | awk '{print $1}')

# Provera da li je PID pronađen
if [ -z "$PID" ]; then
    echo "Greska: Nije pronadjen PID za MainApp."
    exit 1
fi

echo "PID za MainApp je: $PID"

# Pokretanje async profajlera u trajanju od 5 minuta i generisanje flamegraph-a
./asprof -d 300 -f ./flamegraph.html $PID

# Provera da li je profajliranje uspelo
if [ $? -eq 0 ]; then
    echo "Profajliranje je uspsno zavrseno. Flamegraph je generisan u flamegraph.html."
else
    echo "Greska prilikom profajliranja."
    exit 1
fi


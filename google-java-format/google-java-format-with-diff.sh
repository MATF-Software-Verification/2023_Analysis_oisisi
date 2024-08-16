#!/bin/bash

# Putanja do google-java-format JAR datoteke
GOOGLE_JAVA_FORMAT_JAR="./google-java-format-1.23.0-all-deps.jar"

# Direktorijum sa .java klasama koje uključujemo u formatiranje
SRC_DIR="./src"

# Direktorijum za backup koda
BACKUP_DIR="./src_backup"

# Izlazni fajl za izveštaj
REPORT_FILE="formatting_report.diff"

# Kreiranje kopije izvornog koda da bismo kasnije uradili diff
cp -r $SRC_DIR $BACKUP_DIR

# Pokretanje alata
java -jar $GOOGLE_JAVA_FORMAT_JAR --replace $(find $SRC_DIR -name '*.java')

# Generisanje izveštaja o razlikama
diff -ruN $BACKUP_DIR $SRC_DIR > $REPORT_FILE

# Brisanje kopije
rm -rf $BACKUP_DIR

echo "Formatiranje završeno. Izveštaj je generisan u $REPORT_FILE"


# Analiza projekta 'Oisisi_projekat_java'

Ovaj GitHub repozitorijum je namenjen izradi samostalnog seminarskog rada za kurs Verifikacija softvera na master studijama Matematičkog fakulteta u Beogradu. U okviru seminarskog rada potrebno je primeniti alate za statičku i dinamičku verifikaciju softvera na odabranom projektu.

**Autor: Jelena Bondžić 1028/2023**

## Opis analiziranog projekta
**SSluzba** je aplikacija implementirana za potrebe referenata studentske službe uz oslonac na programski jezik Java i biblioteku za razvoj grafičkog korisničkog interfejsa Swing. Aplikacija je razvijana u razvojnom okruženju Eclipse.

Kreatori aplikacije:

[Radovan Župunski](https://www.facebook.com/radovan.zupunski)

[Aleksandar Ignjatijević](https://www.facebook.com/aleksandar.ignjatijevic19)

## Primeri upotrebe:

1. FUNKCIONALNOSTI NAD TIPOM ENTITETA STUDENT:
- Prikaz studenata
- Dodavanje novog studenta
- Brisanje postojeceg studenta
- Izmena postojeceg studenta
- Pretraga studenta

2. FUNKCIONALNOSTI NAD TIPOM ENTITETA PROFESOR
- Prikaz profesora
- Dodavanje novog profesora
- Brisanje postojeceg profesora
- Izmena postojeceg profesora
- Pretraga profesora

3. FUNKCIONALNOSTI NAD TIPOM ENTITETA PREDMET
- Prikaz predmeta
- Dodavanje novog predmeta
- Brisanje postojeceg predmeta
- Izmena postojeceg predmeta
- Dodavanje studenta na predmet
- Dodavanje profesora na predmet
- Brisanje profesora sa predmeta

## Prevodjenje i pokretanje projekta

- Pre pokretanja sam izmenila sve relativne putanje koje vode ka fajlovima iz `datoteke` foldera u apsolutne. Bez te izmene, aplikacija će vrlo verovatno javljati grešku koja ukazuje da je ova izmena potrebna.
- Pokretanje aplikacije:

```bash
/usr/bin/env /usr/lib/jvm/jdk-22.0.2/bin/java -XX:+ShowCodeDetailsInExceptionMessages -cp /home/.../oisisi_projekat_java-master/oisisi_projekat_java-master/SSluzba/bin studsluzba.MainApp
```
## Osnovne informacije o analizi
[GitHub repozitorijum projekta](https://github.com/OakenKnight/oisisi_projekat_java)

[Commit sha](04e853c54030ad9e5a7e828fb9cdda6edba27f8d)

Sama analiza je izvršena nad **main** granom.

Za analizu kvaliteta koda i formatiranje korišćeni su sledeći alati:

1. **Google Java Format**
2. **SpotBugs**
3. **Async-profiler**
4. **Java Flight Recorder**
5. **VisualVM**

Detaljniji opis svakog alata nalazi se u dokumentu [ProjectAnalysisReport.md](ProjectAnalysisReport.md).


## Uputstvo za pokretanje alata
Alati se pokreću tako što se pokrenu skripte koje se nalaze u direktorijumu svakog od alata. VMVisual alat se pokreće direktno preko VisualVm 2.1.9 aplikacije.

Analize koje su izvršene kao i opisi rezultata koji su alati dali se nalaze u  [ProjectAnalysisReport.md](ProjectAnalysisReport.md).

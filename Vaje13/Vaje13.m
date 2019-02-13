# Naloga1-----------------------------------------------------------------------
    podatki = dlmread("kolokviji.csv", ",") # Uvoz podatkov (ločeni z vejico).
    vsota = sum(podatki,2)  # Vsota vrstic (vrstične vsote).
    povprecje = round(mean(podatki, 2)) # Vrne zaokroženo povprečje vrstic stolpov (vrstična povprečja).
    ocene = izracunaj_oceno(povprecje) # Funkcija ki izračuna oceno glede na povprečje.
    zaporedje = (1: length(ocene))' # Stolpec od 1 do dolžine števila ocen.
    rezultat = [zaporedje, podatki, vsota, povprecje, ocene] # Matrkika iz zgoraj pridobljenih spremenljivk
    dlmwrite("rezultat.csv", rezultat, ',') # Matriko rezultatov shranimo v dokument 'rezultat.csv' in jih ločimo z vejico.
    disp('Tip rezultata') # Razvrstimo podatkovne tipe med 'Tip rezultate'. ????
    class(rezultat)
    disp('Tipi stolpcev') # Tukaj pa razvrstimo podatkovne tipe med 'Tipi stolpcev' ????
    class(podatki)
    class(vsota)
    class(povprecje)
    class(zaporedje)
    class(ocene)
# Naloga2-----------------------------------------------------------------------
    hist(ocene) # Funkcija naredi histogram.
    # Namestitev dodatnih paketov.
    pkg install -forge io # ???.
    pkg install -forge statistics # ???.
    pkg load statistics # ???.
    frekvence = tabulate(ocene) # Naredi fekvenčno tabelo rezultat(različni elementi v tabeli,ponavljanje el.,procenti).
    izracunaj = @(n) length(ocene(ocene==n)) # Funkcija.
    arrayfun(izracunaj, 6:10) # Nastavili smo funkcijo od 6 do 10. podobno map-u.
    class(frekvence) # Tip rezultata frekvence.
    bar(6:10, frekvence(6:10, 3)) # bar-stolpični diagram(x,y).
    slika = figure() # Izdelava podlage (grafikona).
    bar(6:10, frekvence(6:10, 3), 'facecolor', 'r', 'edgecolor', 'b') # Oblikovanje grafikona.
    title('Porazdelitev ocen kolokvija') # Naslov.
    xlabel ("ocene"); # Označevanje x-osi.
    ylabel ("stevilo studentov"); # Označevanje y-osi.
    text (10, 10, "bravo!"); # Kje bo text (x,y,text).
    print(slika, 'slika.pdf') # Prikaz.
# Naloga3-----------------------------------------------------------------------
    N = narascajoca(4) # .
# Naloga4-----------------------------------------------------------------------
    M = rand(4) # Vrne matriko
    cas1_zacetek = tic; stevilo_sedel(A); cas1_konec = toc; # tic,toc je časovno merilo ki meri koliko hitro bosta funkciji bili hitri.
    cas2_zacetek = tic; stevilo_sedel2(A); cas2_konec = cas2 = toc;
    razloka_casov = (cas1_konec - cas1_zacetek) - (cas2_konec - cas2_zacetek) # Izračun razlike.
# Naloga5-----------------------------------------------------------------------
    A = rand(2)
    B = rotacija(A)
// Datum: 09.11.2026

== Rechenbeispiel 4
/ geg.: $U_"eff" = 3 "V"$
/ ges.: $L_u = "?" "dBu"$
/ ges.: $L_u = "?" "dBV"$
/ ges.: $L_p = "?" "dBm"$ wenn $U_"eff" = 3 "V"$ an $R = 50 Omega$ anliegt.

$ L_u = 20 dot lg(U_"eff"/U_0) = 20 dot lg(3/(0,7746)) = 11,76 "dBu" $
$ L_u = 20 dot lg(U_"eff"/U_0) = 20 dot lg(3/1) = 9,54 "dBV" $
$ P = U^2/R = (3 "V")^2/(50 Omega) = 0,18 "W" = 180 "mW" $
$ L_p = 10 dot lg(P/P_0) = 10 dot lg((0,18 "W")/(0,001 "W")) = 10 dot lg((180 "mW")/(1 "mW")) = 22,55 "dBm" $

== Rechenbeispiel 5
Ein Verstärker mit einer Ausgangsleistung von $200 "W"$ benötigt eine Steuerleistung (Eingangsleistung) von $50 "mW"$. \
Wie groß ist die Verstärkung?
/ a): als Faktor $P_"out"/P_"in" = "?"$
/ b): Leistungsverstärkung in $"dB" = "?"$

*a)* $P_"out" = 200 "W"$, #h(0.5em) $P_"in" = 50 "mW"$
$ P_"out"/P_"in" = (200 "W")/(50 dot 10^(-3) "W") = 4000 $

*b)* Leistungsverstärkung in dB:
$ v_p = 10 dot lg(P_"out"/P_"in") = 10 dot lg(4000) approx underline(36\,02 "dB") $

// TODO: 1.2 vom Zettel hier einfügen

// TODO: 1.3 vom Zettel hier einfügen

== Rechenbeispiel 6
In einer langen Übertragungsleitung sind insgesamt 5 Verstärker mit jeweils $23 "dB"$ Verstärkung eingebaut.
Trotzdem können von den eingespeisten $5 "W"$ mit $250 "mW"$ Leistungs... aus
// TODO: Satz oben vervollständigen
/ a): Wie groß ist die Dämpfung der Übertragungsleistung mit 5 Verstärkern?
/ b): Wie groß wäre die Dämpfung der Übertragungsleistung ohne die 5 Verstärker?
/ c): Wie groß wäre die Leistung am Empfänger ohne die 5 Verstärker?

/ geg.: $P_1 = 5 "W"$, #h(0.5em) $P_2 = 0,25 "W"$

*a)* Dämpfung mit Verstärkern:
$ a_"ges" = 10 dot lg((0,25 "W")/(5 "W")) = -13 "dB" $

*b)* Dämpfung ohne Verstärker (Leitung allein):
$ a_"Ltg" = a_"ges" - 5 dot 23 "dB" = -13 "dB" - 115 "dB" = -128 "dB" $

#block(breakable: false, width: 100%)[
  *c)* Leistung am Empfänger ohne Verstärker ($P'_2$):
  $
    a_"Ltg" &= 10 dot lg(P'_2/P_1) \
    a_"Ltg"/10 &= lg(P'_2/P_1) \
    10^(a_"Ltg"\/10) &= P'_2/P_1 \
    P'_2 &= P_1 dot 10^(a_"Ltg"\/10) \
         &= 5 "W" dot 10^(-128\/10) \
         &= 5 "W" dot 10^(-12,8) \
         &approx 0,8 dot 10^(-12) "W" = underline(0\,8 "pW")
  $
]

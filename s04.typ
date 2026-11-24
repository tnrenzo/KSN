// Datum: 23.11.2026

=== Rechenbeispiel 6
Die Dämpfung einer Leistung beträgt $-56 "dB"$.
Welche Leistung muss eingespeist werden, damit am Leitungsende eine Spannung
von $1 "mV"$ den Empfänger mit $50 Omega$ Eingangswiderstand erreicht?

/ geg.: $U = 1 "mV"$, #h(0.5em) $R = 50 Omega$, #h(0.5em) $a_"ges" = -56 "dB"$
/ ges.: $P_1 = "?"$

Leistung am Empfänger:
$ P_2 = U^2/R = (10^(-3) "V")^2/(50 Omega) = 2 dot 10^(-8) "W" = 20 "nW" $

Aus $a_"ges" = 10 dot lg(P_2/P_1)$ folgt:
$
  P_1 &= P_2 dot 10^(-a_"ges"\/10) \
      &= 2 dot 10^(-8) "W" dot 10^(5,6) \
      &approx underline(7\,96 "mW")
$

in dBm:
$ L_p = 10 dot lg((7,96 "mW")/(1 "mW")) approx underline(9\,01 "dBm") $

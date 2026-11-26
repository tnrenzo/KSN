// Datum: 09.11.2026
#import "@preview/zap:0.6.0"

=== Rechenbeispiel 3
/ geg.: $U_"eff" = 3 "V"$
/ ges.: $L_U = "?" "dBu"$
/ ges.: $L_U = "?" "dBV"$
/ ges.: $L_P = "?" "dBm"$ wenn $U_"eff" = 3 "V"$ an $R = 50 Omega$ anliegt.

$ L_U = 20 dot lg(U_"eff"/U_0) = 20 dot lg(3/(0,7746)) approx 11,76 "dBu" $
$ L_U = 20 dot lg(U_"eff"/U_0) = 20 dot lg(3/1) = 9,54 "dBV" $
$ P = U^2/R = (3 "V")^2/(50 Omega) = 0,18 "W" = 180 "mW" $
$ L_P = 10 dot lg(P/P_0) = 10 dot lg((0,18 "W")/(0,001 "W")) = 10 dot lg((180 "mW")/(1 "mW")) approx underline(22\,55 "dBm") $

=== Rechenbeispiel 4
Ein Verstärker mit einer Ausgangsleistung von $200 "W"$ benötigt eine Steuerleistung (Eingangsleistung) von $50 "mW"$. \
Wie groß ist die Verstärkung?
/ a): als Faktor $P_"out"/P_"in" = "?"$
/ b): Leistungsverstärkung in $"dB" = "?"$

*a)* $P_"out" = 200 "W"$, #h(0.5em) $P_"in" = 50 "mW"$
$ P_"out"/P_"in" = (200 "W")/(50 dot 10^(-3) "W") = 4000 $

*b)* Leistungsverstärkung in dB:
$ v_P = 10 dot lg(P_"out"/P_"in") = 10 dot lg(4000) approx underline(36\,02 "dB") $

=== Rechenbeispiel 5
Am Anfang einer Übertragungsleitung liegen $80 "mV"$ an.
Am Ende noch $500 "µV"$. Wie groß ist die Dämpfung?

$ v_u = (500 "µV")/(80 "mV") = 6\,25 dot 10^(-3) $

$ a = 20 dot lg(v_u) approx underline(-44\,08 "dB") $

=== Rechenbeispiel 6
In einer langen Übertragungsleitung sind insgesamt 5 Verstärker mit jeweils $23 "dB"$ Verstärkung eingebaut.
Trotzdem können von den eingespeisten $5 "W"$ mit $250 "mW"$ Leistungs... aus
// TODO: Satz oben vervollständigen
/ a): Wie groß ist die Dämpfung der Übertragungsleistung mit 5 Verstärkern?
/ b): Wie groß wäre die Dämpfung der Übertragungsleistung ohne die 5 Verstärker?
/ c): Wie groß wäre die Leistung am Empfänger ohne die 5 Verstärker?

/ geg.: $P_1 = 5 "W"$, #h(0.5em) $P_2 = 0,25 "W"$

#figure(
  zap.circuit({
    import zap: *
    import cetz.draw: *

    // sender
    rect((0, -0.5), (1.8, 0.5), name: "tx")
    content("tx", [Sender])
    content((0.9, -0.9), $P_1 = 5 "W"$)

    // leitung mit 5 verstärkern
    let x0 = 1.8
    for k in range(5) {
      let x = 2.9 + k * 1.9
      line((x0, 0), (x - 0.35, 0))
      line((x - 0.35, 0.45), (x - 0.35, -0.45), (x + 0.45, 0), close: true)
      content((x, 0.8), text(0.85em, $+23 "dB"$))
      x0 = x + 0.45
    }
    line((x0, 0), (x0 + 0.6, 0))

    // empfänger
    rect((x0 + 0.6, -0.5), (x0 + 2.8, 0.5), name: "rx")
    content("rx", [Empfänger])
    content((x0 + 1.7, -0.9), $P_2 = 250 "mW"$)
  }),
  caption: [Übertragungsleitung mit 5 Verstärkern],
)

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

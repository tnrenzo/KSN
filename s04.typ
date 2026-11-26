// Datum: 23.11.2026

=== Rechenbeispiel 7
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
$ L_P = 10 dot lg((7,96 "mW")/(1 "mW")) approx underline(9\,01 "dBm") $

#pagebreak()

== Formel- und Bezugsgrößenübersicht

=== Formelsammlung

#v(1.5em)
#align(center, grid(
  columns: 2,
  column-gutter: 2em,   // Abstand zwischen Spalten
  row-gutter: 1em,      // Abstand zwischen Zeilen
  align: (left),
  [*Größe*],                                    [*Formel*],
  $"Leistungsverhältnis"$,                      $v_P = (P_2)/(P_1) = (P_a)/(P_e)$,
  $"Leistungspegel"$,                           $L_P = 10 dot lg (P/P_0)$,
  $"Spannungspegel"$,                           $L_U = 20 dot lg (U/U_0)$,
  $"Leistung bei Widerstand"$,                  $P = (U^2)/R$,
  $"Spannung aus Pegel"$,                       $U = U_0 dot 10^((L_U)\/20)$,
  $"Leistung aus Pegel"$,                       $P = P_0 dot 10^((L_P)\/10)$,
  $"Dämpfung aus Pegel"$,                       $a_"ges" = 10 dot lg((P_2)/(P_1))$,
  $"Leistung über Strom"$,                      $P = I^2 dot R$,
  $"Spannungsverhältnis"$,                      $v_u = (u_a)/(u_e)$,
  $"Zusammenhang von "v_P "und" v_u$,           $v_P = v_u^2$,
  $"Spannung aus Leistung"$,                    $U_0 = sqrt(P dot R)$,
  $"Dämpfung einer Kette"$,                     $a_"ges" = a_"Ltg" + n dot v$,
  $"Leistung aus Dämpfung"$,                    $P_2 = P_1 dot 10^(a/10) "bzw." P_1 = P_2 dot 10^((-a)/10)$,
  $"Leistungsverstärkung in dB"$,               $v_P = 10 dot lg((P_"out")/(P_"in"))$,
))
#v(2em)

=== Bezugsgrößen

#v(1.5em)
#align(center, grid(
  columns: 2,
  column-gutter: 2em,   // Abstand zwischen Spalten
  row-gutter: 1em,      // Abstand zwischen Zeilen
  align: (left),
  [*Einheit*],         [*Bezugsgröße*],
  $"dBm"$,             $P_0 = 1 "mW"$,
  $"dBW"$,             $P_0 = 1 "W"$,
  $"dBV"$,             $U_0 = 1 "V"$,
  $"dBu"$,             $U_0 = 0,7746 "V" "(1 mW an 600" Omega")"$,
  $"dBµV"$,            $U_0 = 1 "µV"$,
))
#v(2em)

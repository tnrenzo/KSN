// Datum: 09.11.2026

= Wichtige Pegelgrößen

== Wichtige Pegel von Leistungen
$
   0 "dB" & eq.est "Faktor" 1 \
   3 "dB" & eq.est "Faktor" 2 \
  -3 "dB" & eq.est "Faktor" 1/2 \
   6 "dB" & eq.est "Faktor" 4 \
  10 "dB" & eq.est "Faktor" 10
$

== Wichtige Pegel von Spannungen
$
   0 "dB" & eq.est "Faktor" 1 \
   3 "dB" & eq.est "Faktor" sqrt(2) \
  -3 "dB" & eq.est "Faktor" 1/sqrt(2) \
  12 "dB" & eq.est "Faktor" 4 \
  20 "dB" & eq.est "Faktor" 10
$

== Rechenbeispiel 1
/ geg.: $L_u = 20 "dBµV"$
/ ges.: Welcher Effektivwert $U_"eff"$ entspricht diesem Pegel?

$ L_u = 20 dot lg(U_"eff"/U_0) $

Bei spannungsbezogenen Größen in $"dBµV"$ gilt $U_0 = 1 "µV"$. Umgeformt:
$
  U_"eff" &= U_0 dot 10^(L_u\/20) \
          &= 1 "µV" dot 10^(20\/20) = underline(10 "µV")
$

== Rechenbeispiel 2
/ geg.: $L_u = 10 "dBu"$
/ ges.: $U_"eff" = "?"$ #h(1em) sowie #h(1em) $L_u$ in $"dBV" = "?"$

Bezugsgröße für $"dBu"$: $1 "mW"$ an $600 Omega$, also
$ P = U^2/R => U_0 = sqrt(P dot R) = 0,7746 "V" $

$
  U_"eff" &= U_0 dot 10^(L_u\/20) \
          &= 0,7746 "V" dot 10^(10\/20) = underline(2\,449 "V")
$

$
  L_u &= 20 dot lg(U_"eff"/(1 "V")) \
      &= 20 dot lg(2,449) = underline(7\,78 "dBV")
$

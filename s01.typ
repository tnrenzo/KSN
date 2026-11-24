// Datum: 12.10.2026

= Pegel

== Einleitung
Pegel sind wesentliche Größen in der Kommunikationstechnik.
Sie werden unter anderem für Angabe von Leistungen,
Spannungen und Strömen verwendet.

$ P = U^2/R = I^2 dot R $

Sie werden verwendet für:
- Elektrische Spannungen $U$ in $"V"$ z.B.: Empfängereingangsspannung, Mikrofonspannung, Signalausgang
- Elektrische Leistung $P$ in $"W"$ z.B.: Sendeleistung, Verstärkerausgangsleistung

// feldgrößen
Spannungsproportionale Größen (Feldgrößen):
- Elektr. Spannung $U$ in $"V"$
- Elektr. Feldstärke $E$ in $"V"/"m"$
- Elektr. Strom $I$ in $"A"$
- Magnetische Feldstärke $H$ in $"A"/"m"$
- Kraft $F$ in $"N"$
- Druck $p$ in $"N"/"m"^2$

// leistungsgrößen
Leistungsproportionale Größen:
- Leistung $P$ in $"W"$
- Leistungsflussdichte (Strahlungsleistung) in $"W"/"m"^2$
- Arbeit (Energie) $W$ in $"J"$, $"Nm"$, $"Ws"$
- Energiedichte $"J"/"m"^3$

In der Informationstechnik sind häufig keine absoluten Werte interessant,
sondern Verhältnisse zwischen zwei Größen.
Im Prinzip kann jede Größe als Bezugsgröße verwendet werden.
Häufig werden jedoch Eingangsgrößen als Bezugsgröße verwendet. \
$=>$ Relativer Pegel

Dieses Verhältnis von Aus- zu Eingangsspannung wird sehr häufig bei Übertragungsfunktionen verwendet (z.B.: Übertragungsfunktionen $H(f)$, $H(j omega)$, $H(s)$, $F(s)$)

Beispiele:
Verhältnis von Aus- zu Eingangsspannung (z.B.: Übertragungsfunktion)

$ v_u = u_a/u_e => "dimensionslos, Einheit kürzt sich" $

$ v_p = P_a/P_e = v_u^2 quad "(bei gleichem Ein- und Ausgangswiderstand)" $

Der Pegel ist logarithmisch (englisch: "Level") mit dem Formelzeichen $L$ und der Einheit Bel $"B"$. \
*Das Bel ist für das Verhältnis von Leistungen definiert!* \
Meist wird jedoch Dezibel $"dB"$ verwendet.

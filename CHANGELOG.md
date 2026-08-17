# Changelog

## v1.1.0 – 2026-08-17

Ergebnis eines Multi-Agenten-Audits (6 Prüf-Perspektiven, 3 Richter-Linsen,
56 Roh-Befunde). Die Redigierregeln sind deutlich erweitert und präzisiert.

Neue Muster:

- Konnektoren-Kette (zudem, darüber hinaus, des Weiteren als Satzanfangs-Metronom)
- Reiseleiter- und Ankündigungssätze („Werfen wir einen Blick auf …“, „Hier kommt X ins Spiel“)
- Schein-Symmetrie und Zwillingsformeln (sowohl/als auch, einerseits/andererseits, „schnell und effizient“)
- Fassaden-Verben und Nutzen-Hedges („fungiert als Drehscheibe“, „kann dazu beitragen“)
- Metronom-Rhythmus (gleichförmige Satz- und Absatzlängen)
- Schein-Dialog mitten im Text („Das Ergebnis? Eine Verdopplung.“)
- Überschriften-Regeln, Emoji-/Hashtag-Regeln im Formatierungs-Slop

Neue Grundsätze und Regeln:

- Textsorte zuerst: Gattungsnormen schlagen jede Einzelregel
- Nur redigieren: keine Platzhalter, Meta-Kommentare oder Vorreden im Text
- Unantastbares: Code, URLs, Zitate, Tabellenstruktur bleiben zeichengenau
- Konkretheits-Guard: Zahlen und Namen nur aus dem Material, offene Angaben
  werden gemeldet statt erfunden
- Prüfen-Modus mit festem Befundformat und Musterbefund in beispiele.md
- „Nichts zu ändern“ ist ein gültiges Ergebnis
- Regeln für Dateien (direkt ändern), Langtexte (abschnittsweise) und
  englische Texte (nachfragen, nichts übersetzen)
- Abtönungspartikeln geschützt; Partikelarmut als Prüfsignal

Ersetzt und behoben:

- 1–10-Bewertungstabelle durch binäre Selbstkontrolle ersetzt (prüft nur die
  eigenen Änderungen, höchstens eine Nachbesserungsrunde)
- Typografie-Selbstverstoß behoben: Halbgeviertstrich statt Geviertstrich,
  deutsche Anführungszeichen in allen Dateien; Geviertstrich als KI-Marker ergänzt
- beispiele.md erfand Akteure und Zahlen entgegen der eigenen Kopfzeile –
  Beispielwerte sind jetzt als solche gekennzeichnet
- Zwölf neue Vorher/Nachher-Paare, drei korrigiert

## v1.0.1 – 2026-08-17

Installation und Aufruf, keine Änderung an den Redigierregeln.

- README mit Schnellstart und eigenen Abschnitten für Claude Cowork, Codex CLI,
  Claude Code, Claude Projects und API; die alte Anleitung „Skill-Datei im Chat
  anhängen“ war überholt
- Aufruf-Beispiel „Entferne den AI-Slop aus dem Text.“
- `description` im Frontmatter auf 185 Zeichen gekürzt, damit der Upload in
  Cowork und claude.ai das 200-Zeichen-Limit einhält
- `scripts/build.sh` liefert `dist/kein-ki-sprech.zip` als Installationsdatei,
  `kein-ki-sprech.skill` bleibt als identische Kopie erhalten
- Icon und Social Image in `assets/`, gerendert von `scripts/build-assets.sh`

## v1.0.0 – 2026-08-17

Erste Fassung.

- Zwei Modi: Überarbeiten und Prüfen
- Vier deutschspezifische Schwerpunkte: Nominalstil, Passiv mit verschwundenem
  Akteur, Synonymkarussell, Beraterdenglisch und Übersetzungs-Slop
- Wortliste, Floskelliste, rund zwanzig Strukturmuster
- Abschnitt "Was bleiben darf" für Angebote, Aufsichtsschreiben und Protokolle
- Bewertungstabelle mit fünf Dimensionen
- `references/beispiele.md` mit Vorher/Nachher-Paaren

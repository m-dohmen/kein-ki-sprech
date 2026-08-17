# Changelog

## v1.0.1 — 2026-08-17

Installation und Aufruf, keine Änderung an den Redigierregeln.

- README mit Schnellstart und eigenen Abschnitten für Claude Cowork, Codex CLI,
  Claude Code, Claude Projects und API; die alte Anleitung „Skill-Datei im Chat
  anhängen" war überholt
- Aufruf-Beispiel „Entferne den AI-Slop aus dem Text."
- `description` im Frontmatter auf 185 Zeichen gekürzt, damit der Upload in
  Cowork und claude.ai das 200-Zeichen-Limit einhält
- `scripts/build.sh` liefert `dist/kein-ki-sprech.zip` als Installationsdatei,
  `kein-ki-sprech.skill` bleibt als identische Kopie erhalten
- Icon und Social Image in `assets/`, gerendert von `scripts/build-assets.sh`

## v1.0.0 — 2026-08-17

Erste Fassung.

- Zwei Modi: Überarbeiten und Prüfen
- Vier deutschspezifische Schwerpunkte: Nominalstil, Passiv mit verschwundenem
  Akteur, Synonymkarussell, Beraterdenglisch und Übersetzungs-Slop
- Wortliste, Floskelliste, rund zwanzig Strukturmuster
- Abschnitt "Was bleiben darf" für Angebote, Aufsichtsschreiben und Protokolle
- Bewertungstabelle mit fünf Dimensionen
- `references/beispiele.md` mit Vorher/Nachher-Paaren

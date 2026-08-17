# Kein KI-Sprech

Ein Skill, der deutsche Texte von KI-Mustern befreit, ohne die Handschrift der schreibenden Person zu überschreiben.

Die englischsprachigen Vorbilder ([no-ai-slop](https://github.com/petergyang/no-ai-slop), [stop-slop](https://github.com/hardikpandya/stop-slop)) jagen englische Marker: Em-Dashes, Wh-Satzanfänge, „delve", „leverage". Im Deutschen existieren die entweder nicht oder sind sogar korrekt — der Halbgeviertstrich ist hier sauberes Handwerk, kein Verstoß. Dieser Skill ist deshalb keine Übersetzung, sondern eine Neufassung mit deutschen Mustern.

## Was er findet

**Die vier großen Baustellen im Deutschen**

- **Nominalstil** — Substantivketten auf -ung/-heit/-keit sind der stärkste Marker für maschinelles Deutsch. „Zur Sicherstellung der Einhaltung der Anforderungen" wird zu „damit die Vorgaben eingehalten werden".
- **Passiv mit verschwundenem Akteur** — „Es wurde entschieden" verschweigt, wer entschieden hat.
- **Synonymkarussell** — der Deutschunterricht verbietet Wortwiederholung, Sprachmodelle setzen das brav um: dieselbe Sache heißt im Absatz Lösung, Tool, Anwendung, Plattform.
- **Beraterdenglisch und Übersetzungs-Slop** — „am Ende des Tages", „Low Hanging Fruits", „in 2026", „nicht wirklich".

Dazu rund zwanzig Struktur- und Wortmuster: binäre Kontraste, Räuspern vorweg, Pseudo-Erkenntnisse, Doppelpunkt-Pointen, Deutungs-Anhängsel, Bedeutungs-Aufplusterung, vage Belege, Dreierfiguren, tiefsinnige Schlusssätze, Zusammenfassungs-Enden, Formatierungs-Slop.

## Was er stehen lässt

Nicht jede Förmlichkeit ist KI-Sprech. In Angeboten, Aufsichtsschreiben, Vorstandsvorlagen und Protokollen sind Siezen, feste Formeln, Passivkonstruktionen und Fachvokabular Teil der Gattung. Der Skill prüft erst die Textsorte, bevor er redigiert. Ohne diese Regel würde er genau die Dokumente beschädigen, die in regulierten Branchen am meisten zählen.

Ebenso bleiben: die Stimme der schreibenden Person, klare Meinungen, Selbstironie, Fachbegriffe, die die Zielgruppe kennt.

## Zwei Modi

**Überarbeiten** (Standard) — kleinster wirksamer Eingriff, danach ein kurzer Abschnitt „Was geändert wurde".

**Prüfen** — Diagnose ohne Umschreiben: jedes gefundene Muster benannt, die Stelle zitiert, die Korrektur in wenigen Worten. Kein Rätselraten darüber, ob eine KI den Text geschrieben hat. Detektoren raten, benannte Muster kann man nachprüfen.

## Installation

**Claude Code**

```bash
git clone git@github.com:m-dohmen/kein-ki-sprech.git
mkdir -p ~/.claude/skills
cp -r kein-ki-sprech ~/.claude/skills/
```

Für ein einzelnes Projekt statt global: nach `.claude/skills/` im Projektverzeichnis kopieren.

**Claude Desktop / claude.ai**

Die Datei `kein-ki-sprech.skill` aus dem [aktuellen Release](https://github.com/m-dohmen/kein-ki-sprech/releases/latest) laden und im Chat anhängen. Über den Button **Save skill** wird sie ins Profil übernommen. Voraussetzung ist, dass die Organisation das Anlegen eigener Skills erlaubt.

**Claude Projects**

`SKILL.md` und `references/beispiele.md` in das Projektwissen hochladen.

**API oder eigene Anwendung**

Den Inhalt von `SKILL.md` in den System-Prompt übernehmen. `references/beispiele.md` nur bei Bedarf nachladen.

## Verwendung

```
/kein-ki-sprech <Text>
```

Oder umgangssprachlich, der Skill greift auch ohne Slash-Befehl:

- „Mach den Absatz weniger nach KI klingend."
- „Klingt der LinkedIn-Post nach ChatGPT? Nur prüfen, nicht umschreiben."
- „Entfloskle den Angebotstext, aber lass die Vertragsformeln in Ruhe."

## Anpassen

Zwei Stellen lohnen sich vor dem internen Rollout:

1. **Die Wortliste** in `SKILL.md` um die Lieblingsfloskeln des eigenen Hauses ergänzen. Jede Marketingabteilung hat welche.
2. **Anrede** — der Skill duzt in seinen eigenen Kommentaren. Wer das anders will, ändert es im Abschnitt *Ablauf*.

## Aufbau

```
kein-ki-sprech/
├── SKILL.md                  # Regeln und Ablauf
├── references/
│   └── beispiele.md          # Vorher/Nachher-Paare
└── scripts/
    └── build.sh              # baut dist/kein-ki-sprech.skill
```

Release-Artefakt neu bauen:

```bash
./scripts/build.sh
```

## Herkunft

Deutsche Eigenentwicklung, angeregt von [no-ai-slop](https://github.com/petergyang/no-ai-slop) (Peter Yang) und [stop-slop](https://github.com/hardikpandya/stop-slop) (Hardik Pandya), beide MIT. Regeln, Wortlisten, Muster und Beispiele sind für das Deutsche neu geschrieben.

## Lizenz

MIT

# Mitmachen

Danke fürs Interesse an Kein KI-Sprech. Der Skill lebt davon, dass mehr Muster erkannt und mehr Formulierungen ausprobiert werden, als eine Person allein findet.

## Womit du am meisten hilfst

**Neue Muster melden.** Ein KI-Sprech-Muster, das in `SKILL.md` fehlt: Issue eröffnen mit einem echten (oder erfundenen, aber realistischen) Vorher-Satz und einer kurzen Erklärung, warum das Muster diskriminativ für Maschinendeutsch ist – gute menschliche Autoren dürfen es nicht genauso oft nutzen.

**Falsch-Positive melden.** Der Skill hat einen Satz verschlimmbessert, eine Regattung falsch behandelt oder die Stimme der schreibenden Person überschrieben: Issue mit Vorher-Text, was der Skill daraus gemacht hat, und was besser gewesen wäre.

**Vorher/Nachher-Paare beisteuern.** `references/beispiele.md` wächst mit jedem Muster. Ein neues Paar folgt dem bestehenden Format: `**Vorher:**` / `**Nachher:**`, kein erfundener Fakt ohne Kennzeichnung als Beispielwert (siehe Einleitung der Datei).

**Übersetzungen oder Adaptionen.** Der Skill ist für Deutsch geschrieben, nicht aus dem Englischen übersetzt. Wer eine Adaption für eine andere Sprache bauen will: gerne als eigenes Repo, ein Verweis hier ist willkommen.

## Pull Requests

1. Repo forken, Branch von `main` abzweigen.
2. Änderung an `SKILL.md` und/oder `references/beispiele.md`.
3. `./scripts/build.sh` laufen lassen und das Ergebnis testen – am besten mit dem Skill selbst in Claude Code oder Cowork gegen ein paar Beispieltexte.
4. Grep-Gegenprobe: `grep -c '—' SKILL.md references/beispiele.md` muss außer der einen Typografie-Erwähnung in `SKILL.md` überall `0` liefern – der Skill verlangt den Halbgeviertstrich, nicht den Geviertstrich.
5. Pull Request mit kurzer Begründung: welches Problem löst die Änderung, mit welchem Beispiel lässt es sich nachvollziehen.

Kleine, fokussierte Pull Requests sind leichter zu prüfen als große Sammel-Änderungen.

## Stil der Regeln selbst

`SKILL.md` ist ein Redigierwerkzeug, kein Aufsatz. Neue Regeln:

- Nennen ein konkretes Muster mit Beispielsatz, nicht nur eine Kategorie.
- Sagen, was zu tun ist, nicht nur, was falsch ist.
- Benennen die Ausnahme, wenn eine Textsorte oder eine echte Stimme das Muster rechtfertigt.
- Bleiben so kurz wie möglich – jede Zeile kostet Kontext bei jedem Aufruf des Skills.

## Fragen

Für alles andere: [Issue eröffnen](https://github.com/m-dohmen/kein-ki-sprech/issues).

# Sicherheitsrichtlinie

Kein KI-Sprech ist ein Text-Skill (Markdown-Anweisungen für ein LLM) ohne ausführbaren Code im Skill selbst. Angriffsfläche im klassischen Sinn – Code-Ausführung, Netzwerkzugriff, Datenverarbeitung – gibt es nicht.

## Was trotzdem relevant ist

- **`scripts/build.sh` und `scripts/build-assets.sh`** – Shell-Skripte, die lokal ZIP-Archive und Bilder bauen. Sie führen keinen Fremdcode aus und laden nichts aus dem Netz.
- **Prompt-Injection über zu redigierenden Text** – wer den Skill mit präpariertem Text füttert, der Anweisungen an das LLM enthält, testet damit die Robustheit des Host-Modells (Claude, GPT etc.), nicht eine Schwachstelle in diesem Repository. Solche Funde sind trotzdem willkommen, siehe unten.

## Eine Schwachstelle melden

Für Funde, die die oben genannten Skripte betreffen (z. B. Command Injection über einen Dateinamen), oder für Prompt-Injection-Muster, die den Skill zuverlässig aus seiner Rolle drängen: bitte **kein öffentliches Issue**, stattdessen [GitHub Security Advisory](https://github.com/m-dohmen/kein-ki-sprech/security/advisories/new) für dieses Repository nutzen oder die Projektbetreuung direkt kontaktieren.

Eine Rückmeldung ist innerhalb weniger Tage zu erwarten.

## Kein Bug-Bounty

Dieses Projekt ist ein Open-Source-Skill ohne Budget für ein Bug-Bounty-Programm. Verantwortungsvolle Offenlegung wird trotzdem geschätzt und im Changelog gewürdigt, sofern gewünscht.

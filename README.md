# Herz Mod

Fabric-Mod für Minecraft Java **26.3** (reines Datenpaket, kein Java-Code).

- **Rezept** (formlos, Werkbank): 1 Netherite-Barren + 4 Diamanten → 1 **Herz**
- **Benutzen** (Rechtsklick halten wie Essen): +1 Herz (= +2 maximale Lebenspunkte)
- **Tod**: alle Extra-Herzen gehen verloren (Maximalleben fällt zurück auf 10 Herzen)
- Nur auf dem **Server** nötig, **Fabric API** muss auf dem Server installiert sein.
- Bedrock-Spieler (Geyser/Floodgate) brauchen nichts zu installieren: Das Herz ist technisch ein umbenannter, leuchtender Apfel.

## Anpassen

- Rezept: `src/main/resources/data/herzmod/recipe/heart.json`
- Wie viele Herzen pro Item: `consume.mcfunction` (`scoreboard players add #hp herzmod.tmp 2`)

## JAR über GitHub bauen

1. Alle Dateien **mit Ordnerstruktur** ins Hauptverzeichnis eines GitHub-Repos legen (auch `.github/workflows/build.yml`).
2. Tab **Actions** → Workflow **build** (oder **Run workflow**).
3. JAR unter **Artifacts** → `herz-mod`, in den `mods`-Ordner des Servers legen.

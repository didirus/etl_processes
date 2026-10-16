# Agentic engineering in VS Code

## Slide: Zet een agent aan het werk in je projectmap

### Vooraf

- Open de map `etl-processen` in VS Code.
- Controleer of je de juiste bestanden ziet: `etl_processes.ipynb`, `sample_data/`, `pyproject.toml` en `Makefile`.
- Installeer een door de docent toegestane coding-agentextensie voor VS Code.
- Gebruik bij voorkeur een onderwijsaccount of een model waarvoor geen vertrouwelijke bedrijfsdata nodig is.

### Start de agent

1. Open de Chat- of Agent-weergave in VS Code.
2. Controleer dat de geopende map de workspace is.
3. Kies **Agent mode** als die optie beschikbaar is.
4. Geef de agent alleen toegang tot deze projectmap.
5. Laat de agent eerst lezen en uitleggen. Geef pas later toestemming om bestanden te wijzigen of terminalcommando's uit te voeren.
6. Controleer iedere wijziging in de diff voordat je deze accepteert.

### Eerste prompt

```text
Je werkt in de cursusmap etl-processen.
Lees eerst alleen de structuur van de map, pyproject.toml, Makefile en
de markdown-cellen van etl_processes.ipynb.
Voer geen commando's uit en wijzig geen bestanden.
Vat samen:
1. wat het doel van deze oefening is;
2. welke databronnen worden gebruikt;
3. welke stappen de pipeline bevat;
4. welke onderdelen nog niet zijn geïmplementeerd.
```

### Veiligheidsregels

- Geef geen API-sleutels, wachtwoorden of persoonsgegevens aan de agent.
- Voer geen verwijdercommando's uit zonder expliciete toestemming.
- Laat de agent niet zomaar bestanden overschrijven.
- Controleer voorgestelde code zelf en voer tests uit.
- Een agent kan overtuigend klinken en toch een fout antwoord geven.

## Opdracht 1: Verken de projectmap

### Doel

Oefen met een agent die bestaande bestanden leest en uitlegt, zonder wijzigingen te maken.


## Opdracht 1: Laat de agent data profileren

### Doel

Leren dat een agent een data-inspectie kan uitvoeren, maar dat de resultaten gecontroleerd moeten worden.

### Opdracht

Vraag de agent om de twee JSON-bestanden en de CSV-metadata te onderzoeken.

```text
Inspecteer de bestanden in sample_data/.
Gebruik alleen leesacties.
Rapporteer per bestand:
- het aantal records;
- de kolommen of velden;
- ontbrekende waarden;
- mogelijke onrealistische waarden;
- een voorstel voor drie data-quality checks.
Voer geen wijzigingen uit.
```

Controleer daarna handmatig minimaal twee bevindingen met Python of VS Code.

### Inleveren

- Het rapport van de agent.
- De twee controles die je zelf hebt uitgevoerd.
- Een uitleg van een bevinding die de agent niet heeft genoemd.

## Opdracht 3: Laat de agent een validatieplan maken

### Doel

Een natuurlijke-taalvraag omzetten naar expliciete, testbare regels.

### Opdracht

```text
Maak een validatieplan voor de sensor readings.
Gebruik een tabel met de kolommen:
check, reden, inputvelden, regel, severity en actie.

Maak onderscheid tussen:
- een fout waardoor de pipeline moet stoppen;
- een waarschuwing waarbij de pipeline door mag gaan.

Schrijf nog geen Python-code.
```

Bespreek in tweetallen of de voorgestelde toleranties passend zijn. Let vooral op temperatuur, CO2, batterij en timestamps.

### Inleveren

- Het gevalideerde plan.
- Een korte toelichting op een regel die je hebt aangepast.

## Opdracht 4: Laat de agent een kleine functie schrijven

### Doel

Oefenen met gecontroleerd code laten genereren.

### Opdracht

Laat de agent een functie maken die alle JSON-bestanden uit `sample_data/` vindt.

```text
Schrijf een kleine Python-functie check_for_data(folder_name).
De functie moet een gesorteerde lijst met JSON-paden teruggeven.

Randvoorwaarden:
- gebruik pathlib;
- geef een duidelijke foutmelding als de map niet bestaat;
- wijzig alleen een nieuw bestand agent_experiment.py;
- voer geen terminalcommando's uit.
```

Bekijk de diff en vraag daarna:

```text
Schrijf drie pytest-tests voor deze functie.
Wijzig alleen agent_experiment.py en maak test_agent_experiment.py aan.
Voer de tests nog niet uit.
```

### Inleveren

- De prompt.
- De diff.
- De tests.
- Een korte beoordeling van de code: wat heb je geaccepteerd en wat heb je aangepast?

## Opdracht 5: Agent als code reviewer

### Doel

Leren om de agent te gebruiken voor feedback in plaats van blind code over te nemen.

### Opdracht

Kies een codecel uit `etl_processes.ipynb` en vraag:

```text
Review deze code als een data engineer.
Zoek alleen naar:
- fouten in de logica;
- problemen met ontbrekende waarden;
- niet-idempotente verwerking;
- onveilige omgang met bestanden of credentials;
- ontbrekende tests.

Geef per bevinding severity, uitleg en een concrete verbetering.
Wijzig niets.
```

Vergelijk de review met je eigen beoordeling. De agent moet minimaal een fout in de huidige oefening kunnen signaleren, zoals een ontbrekende timestamp of een onrealistische sensorwaarde.

### Inleveren

- De review van de agent.
- Een eigen review van minimaal drie punten.
- Een vergelijking: welke review was sterker en waarom?

## Opdracht 6: Laat de agent een test uitvoeren

### Doel

Ervaren dat een agent tools kan gebruiken, maar dat terminaltoegang risico's heeft.

### Opdracht

Geef de agent deze opdracht:

```text
Voer eerst uit welk Python-commando nodig is om de tests van
agent_experiment.py uit te voeren.
Leg uit wat het commando doet.
Vraag daarna om toestemming voordat je het uitvoert.
```

Geef alleen toestemming als het commando beperkt blijft tot de tests in deze projectmap.

### Inleveren

- Het voorgestelde commando.
- De testuitvoer.
- Een uitleg waarom toestemming vragen belangrijk is.

## Opdracht 7: Verbeter een pipeline met menselijke controle

### Doel

Een agent gebruiken voor een kleine wijziging, met duidelijke grenzen en menselijke goedkeuring.

### Opdracht

Vraag de agent om een batterijwaarschuwing toe te voegen aan een afzonderlijk experimentbestand.

```text
Maak een voorstel voor een functie low_battery_readings(records, threshold=20).
De functie moet de metingen met een batterijpercentage onder de threshold
teruggeven.

Maak eerst een plan.
Wijzig nog geen bestaande bestanden.
Gebruik geen externe API's.
```

Beoordeel het plan. Geef daarna pas toestemming om de functie en tests in de experimentbestanden te schrijven.

### Inleveren

- Het plan voor de wijziging.
- De uiteindelijke functie en tests.
- De diff.
- Een bewijs dat de bestaande notebookbestanden niet zijn gewijzigd.

## Opdracht 8: Agent versus deterministische pipeline

### Doel

Begrijpen wanneer een agent wel en niet geschikt is voor ETL-werk.

### Opdracht

Vraag de agent om deze twee ontwerpen te vergelijken:

```text
Vergelijk deze twee ontwerpen voor een dagelijkse sensorpipeline:

A. Een vaste Python-pipeline met expliciete validatieregels.
B. Een agent die zelf bepaalt welke transformaties en validaties nodig zijn.

Vergelijk voorspelbaarheid, flexibiliteit, kosten, veiligheid,
reproduceerbaarheid en foutafhandeling.
Geef daarna een derde ontwerp waarin een agent alleen ondersteunt
en de pipeline deterministisch blijft.
```

### Inleveren

- De vergelijking.
- Een architectuurschets van ontwerp C.
- Drie acties waarvoor de agent menselijke goedkeuring nodig heeft.

## Reflectie

Beantwoord na afloop:

1. Bij welke opdracht was de agent het nuttigst?
2. Waar gaf de agent een onjuist of onvolledig antwoord?
3. Welke informatie had de agent nodig om een beter antwoord te geven?
4. Welke acties mag een agent volgens jou nooit zonder toestemming uitvoeren?
5. Welke delen van een ETL-pipeline moeten volgens jou altijd deterministisch blijven?

## Docentnotitie

Deze opdrachten kunnen zonder API-sleutel worden uitgevoerd. Gebruik voor de les bij voorkeur een coding agent die in VS Code beschikbaar is via een onderwijsaccount. De exacte knopnamen verschillen per extensie; de leerdoelen zijn daarom bewust provider-neutraal geformuleerd.

Laat studenten eerst read-only opdrachten uitvoeren. Schakel pas daarna schrijfrechten en terminalgebruik in. Gebruik een aparte experimentmap of versiebeheer zodat wijzigingen eenvoudig kunnen worden teruggedraaid.

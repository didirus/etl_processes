# ETL Processen - Tutorial Data Engineering Pipeline

In deze praktische tutorial leer je een basis data-engineering pipelines te bouwen in Python. Dit project behandelt ETL-concepten (Extract, Transform, Load) aan de hand van een realistisch voorbeeld met IoT-sensordata.

## Overzicht

In deze tutorial bouw je stap voor stap een complete datapipeline die temperatuur- en CO2-sensordata uit een faculteitsgebouw verwerkt. Je leert om:

- Data te extraheren uit meerdere bronnen (JSON-bestanden, CSV, publieke API's)
- Data te transformeren en verrijken met businesslogica
- Datakwaliteit te valideren
- Data te laden in een datawarehouse
- Op te schalen met Apache Spark

## Vereisten

- Python 3.11+
- Basiskennis van Python en pandas
- Jupyter Notebook of Google Colab

## Installatie-instructies

1. **Clone/download deze repository**

2. **Gebruik de standaard projectcommando's**:
   ```bash
   make install
   ```
   Dit commando maakt `.venv` aan, installeert `uv`, synchroniseert alle afhankelijkheden uit `pyproject.toml` en controleert de omgeving.

3. **Activeer de omgeving**:
   ```bash
   source .venv/bin/activate
   ```

4. **(Optioneel) Registreer een aparte Jupyter-kernel**:
   ```bash
   make jupyter-kernel
   ```

5. **Start Jupyter Notebook**:
   ```bash
   jupyter notebook
   ```

6. **Open het relevante notebook** (zie hieronder)

## Standaard Make-commando's

Inspecteer de `Makefile`. Een Makefile is een bestand met een aantal commando's die de setup makkelijker moet maken:

- `make help` - Toont beschikbare commando's
- `make create-venv` - Maak/vernieuw de lokale virtual environment en installeer `uv`
- `make install` - Installeer alle dependencies uit `pyproject.toml` en valideer imports
- `make jupyter-kernel` - Registreer de kernel `Python (ETL Processes)` voor notebooks
- `make clean` - Verwijder lokaal gegenereerde omgevingsbestanden (`.venv`) om bijvoorbeeld opnieuw te beginnen.

## Dependencies

Dependencies worden centraal beheerd in `pyproject.toml`.

Belangrijkste pakketten in deze ETL-cursus:
- `pandas`, `numpy` voor data-extractie en transformatie
- `requests` voor API-gebaseerde extractie
- `pyarrow`, `fastparquet` voor analysegeschikte outputformaten
- `apscheduler` voor planningsconcepten
- `ipython`, `ipykernel`, `matplotlib` voor notebook-gebaseerd leren en visuele controles

## Voorbeelddata

De map [sample_data/](sample_data/) bevat:
- `sensor_readings_day1.json` - Eerste batch met sensormetingen
- `sensor_readings_day2.json` - Tweede batch met sensormetingen
- `sensor_metadata.csv` - Sensorconfiguratie en metadata


## Belangrijkste concepten

1. **Trigger** - Wanneer en hoe je pipelines start (cron, event-based)
2. **Connection** - Authenticeren en verbinden met databronnen
3. **State Management** - Bijhouden wat al verwerkt is
4. **Extraction** - Lezen uit meerdere databronnen
5. **Transformation** - Data opschonen, verrijken en filteren
6. **Validation** - Datakwaliteitscontroles en toleranties
7. **Loading** - Wegschrijven naar doelopslag (CSV vs Parquet)
8. **Archiving** - Retentiebeleid en datalevenscyclus
9. **Scaling** - Van pandas naar PySpark voor grotere datasets

De setup in deze repository is bewust eenvoudig en reproduceerbaar gehouden, zodat studenten zich kunnen richten op ETL-kernconcepten in plaats van omgevingsproblemen.

## Aanvullende bronnen

- [Apache Airflow](https://airflow.apache.org/) - Productieklare pipeline-orkestratie
- [dbt](https://www.getdbt.com/) - SQL-gebaseerd transformatieframework
- [Great Expectations](https://greatexpectations.io/) - Framework voor datakwaliteit
- [Open-Meteo API](https://open-meteo.com/) - Gratis weer-API die in deze tutorial wordt gebruikt

## Troubleshooting

**Probleem:** `ModuleNotFoundError` bij het uitvoeren van notebooks
- **Oplossing:** Voer `make install` uit en daarna `source .venv/bin/activate` voordat je notebooks opent

**Probleem:** Weer-API reageert niet
- **Oplossing:** Controleer je internetverbinding; de Open-Meteo API is gratis en vereist geen authenticatie

**Probleem:** PySpark-notebook faalt lokaal
- **Oplossing:** Probeer het notebook in [Google Colab](https://colab.research.google.com/) te draaien; Spark is daar al geïnstalleerd

## Licentie

Dit onderwijsmateriaal is bedoeld voor leerdoeleinden.

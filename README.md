# ETL Processen – snelle voorbereiding
~30 minuten.

In deze tutorial werk je met een ETL-pipeline op basis van IoT-sensordata (JSON + CSV) in Python.

`pyproject.toml` bevat de projectdependencies en instellingen. De `Makefile` geeft je korte commando’s om de setup snel uit te voeren.

## Vóór de les (alleen setup)

### Wat heb je nodig?
- Python `3.11+`
- Een editor met Jupyter, of Jupyter Notebook/Colab

Gebruik je VS Code? Installeer dan ook deze extensies:
- `Python` (Microsoft)
- `Jupyter` (Microsoft)

### Snelle setup
1. Clone deze repository.
2. Installeer alles:
   ```bash
   make install
   ```
3. Activeer de virtuele omgeving:
   ```bash
   source .venv/bin/activate
   ```
4. Optioneel (handig voor notebooks):
   ```bash
   make jupyter-kernel
   ```

Klaar. In de les gaan we direct aan de slag met de pipeline.

## Bonus: agent in je IDE

We gaan ook een opdracht doen met een agent. Je kunt deze alvast klaarzetten in VS Code:
- Installeer de extensie `GitHub Copilot Chat`
- Log in met je GitHub-account en volg de activatiestappen
- Check ook op GitHub.com dat `GitHub Copilot` actief is op je account (of via je werk/organisatie)

## Hulp bij problemen

- `make: command not found` → gebruik op Windows bij voorkeur WSL of Git Bash.
- Venv activeren lukt niet op Windows:
  - PowerShell: `.venv\Scripts\Activate.ps1`
  - CMD: `.venv\Scripts\activate.bat`
- PowerShell blokkeert scripts:
  - `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
- Check Python-versie:
  - `python --version` (of `python3 --version`), vereist is `3.11+`.



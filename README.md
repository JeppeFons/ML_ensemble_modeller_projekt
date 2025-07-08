docker build -t xgb-creditcard .
docker run -v ${PWD}/mlruns:/mlruns -v ${PWD}/data:/app/data xgb-creditcard

mlflow ui


conda update -n base -c defaults conda

conda env create -f environment.yml
conda activate ml-env


# Dette er en H1 (største overskrift)
## Dette er en H2
### Dette er en H3


**fed tekst**   → bliver **fed tekst**

*kursiv tekst* → bliver *kursiv tekst*


- Punkt 1
- Punkt 2
  - Underpunkt


1. Første punkt
2. Andet punkt

python==3.10.13
pandas==2.2.3
scikit-learn==1.6.1
mlflow==3.1.1
xgboost==2.0.3

# start serveren #
mlflow server --backend-store-uri sqlite:///mlflow.db --default-artifact-root ./mlruns --host 0.0.0.0 --port 5000 

# byg container #
docker build -t fraud-model .
docker run --add-host=host.docker.internal:host-gateway fraud-model



**formål**
formålet med det her projekt er at anvende XGBoost og random forest på "credit card fraud detection"-datasættet på kaggle.
derudover vil jeg have erfaring med følgende teknologier i projektet:
- MLflow
- docker & kubernetes
- CI/CD
- deploye modellerne til cloud miljø såsom azure
- evt. REST API / FAST API


#**struktur**#

Selvfølgelig! Det er en rigtig god idé at have en klar og professionel mappestruktur til dine machine learning-projekter på GitHub. Det gør det lettere at navigere i projekterne, og det viser, at du har styr på god praksis.

Her er en typisk, professionel og best practice mappestruktur til et ML-projekt, som du kan bruge som skabelon for alle dine projekter:

```
/projekt-navn
│
├── data/
│   ├── raw/                 # Rå data (fx originale Kaggle data)
│   ├── processed/           # Renset/forarbejdet data klar til brug
│   └── external/            # Eksterne data, hvis du bruger dem
│
├── notebooks/               # Jupyter notebooks til eksperimenter, EDA osv.
│
├── src/                     # Source code - al scripts og moduler til projektet
│   ├── __init__.py
│   ├── data_preprocessing.py
│   ├── feature_engineering.py
│   ├── model.py             # Modelarkitektur og træning
│   ├── evaluation.py        # Evaluering af modeller
│   └── utils.py             # Hjælpefunktioner
│
├── models/                  # Gemte modeller, f.eks. .pkl eller .joblib filer
│
├── reports/                 # Rapport- og visualiseringsfiler (plots, rapporter)
│
├── requirements.txt         # Projektets Python dependencies
├── README.md                # Projektbeskrivelse, brug og resultater
├── setup.py                 # Hvis du vil gøre projektet installerbart som package (valgfrit)
├── .gitignore               # Filer og mapper, der skal ignoreres af Git
└── LICENSE                  # Licensfil (fx MIT, Apache 2.0)
```

---

### Forklaring:

* **data/raw/**: Gem altid originaldata her, så du kan reproducere alt.
* **data/processed/**: Det er god praksis at have en separat mappe for data, der er renset eller feature-engineered.
* **notebooks/**: Her ligger dine exploratory data analysis (EDA), test af modeller osv. Når du har klar kode, kan den evt. flyttes til `src/`.
* **src/**: Al produktionsklar kode bør ligge her i scripts eller som moduler.
* **models/**: Gem dine trænede modeller her.
* **reports/**: Gem plots, visualiseringer og evt. rapporter (PDF/Markdown).
* **requirements.txt**: Angiv alle nødvendige Python-pakker, så andre let kan installere afhængigheder.
* **README.md**: Beskriv projektets formål, data, metode, resultater og hvordan man kører koden.
* **setup.py**: Hvis du ønsker at gøre dit projekt til et Python package (ofte ikke nødvendigt i simple projekter).
* **.gitignore**: Sørg for at ignorere store filer, midlertidige filer osv.
* **LICENSE**: Angiv en licens, så andre ved, hvad de må med dit kodeprojekt.

---

### Ekstra tips:

* Brug klare og sigende navne til scripts.
* Overvej at lave en `Makefile` eller `run.sh` script til at automatisere typiske kommandoer som dataforberedelse, træning og evaluering.
* Hvis projektet bliver større, kan du overveje at adskille eksperimenter i en `experiments/` mappe.
* Dokumentér dine scripts med docstrings og kommenter i notebooks.

---

Vil du have, at jeg hjælper dig med at bygge et konkret eksempel på denne struktur som kode/skabelon, eller vil du have et eksempel på en README?


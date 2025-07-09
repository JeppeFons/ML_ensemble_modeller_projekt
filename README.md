### Projektbeskrivelse og formål

Den primære motivation bag dette projekt var at få praktisk erfaring med MLFlow for at opnå en bedre forståelse af MLOps og praktisk erfaring med MLFlow API’et generelt.

Min motivation var også at få praktisk erfaring med Docker og containerisering, da dette er en eftertragtet kompetence hos arbejdsgivere.

Derfor vil ML-modelarkitekturen ikke være særlig kompleks i starten, da jeg fokuserer på simple anvendelser af MLFlow og Docker. Men med tiden vil jeg udvikle arkitekturen til at blive mere kompleks.

### Installation og opsætning (fx miljø, dependencies)

Tjek blandt andet requirements.txt

### Instruktioner til hvordan man kører koden eller notebooks

**nedenstående skal køres i powershell, for at få containeren op at køre med ML-modellen**
**bygger et image** 

docker build -t xgb-mlflow-image .

-t er et tag, alt efter hvad vi vil kalde imaget. punktummet betyder, at vi bygger imaget i den aktuelle mappe hvor dockerfilen er

docker run --rm -it -v ${pwd}/data:/app/data xgb-mlflow-image

i ovenstående command loader du data fra data/raw_data/creditcard.csv, så for at containeren kan læse data, skal den mount'es i den lokale mappe ind i containeren, fx sådan

docker run --rm -it -v ${PWD}/data:/app/data -v ${PWD}/mlruns:/app/mlruns xgb-mlflow-image

Hvis du vil bevare MLflow tracking logs udenfor containeren (eks. så du kan se resultaterne bagefter), kan du også mount'e mlruns mappen

forklaring:
--rm fjerner containeren, når den stopper.

-it gør at du får en interaktiv terminal (godt til debug, kan undlades).

xgb-mlflow-image er navnet på det image der laves.

**Hvis du kun vil genkøre træningen:**

**tjek MLflow UI på:**

først kør nedenstående i powershell:

mlflow ui --backend-store-uri ./mlruns

derefter tjek nedenstående lokal host:
http://localhost:5000

### Forklaring af datasæt og kilde



### Resultater og konklusioner

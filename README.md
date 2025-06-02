1. Dodanie sekretów 
   - W repozytorium w ustawieniach dodano sekret `ACTIONS_USERNAME`, który jest wykorzystywany w workflow do celów autoryzacji / konfiguracji.
   - Sekret dodano w:  
     `Settings > Secrets and variables > Actions > Repository secrets`.

2. Konfiguracja workflow GitHub Actions  
   - Utworzono plik `.github/workflows/main.yml` (lub inna nazwa), który definiuje kroki wykonywane automatycznie po `push` do brancha `main`.
   - Workflow używa sekretu `ACTIONS_USERNAME` jako zmiennej środowiskowej.
   - W kroku testowym wypisuje status wykorzystania sekretu (wartość jest ukryta).

3. Testowe uruchomienie workflow  
   - Workflow został uruchomiony automatycznie przy ostatnim `push` do repozytorium.
   - Status wykonania znajduje się w zakładce **Actions** i potwierdza poprawność działania wszystkich kroków.

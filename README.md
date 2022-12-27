## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Postman](#postman)
* [Pytest](#pytest)
* [Behave Restful](#behave_restful)

## General info
I'm too lazy to translate it into English ;)

1. Dla endpointu https://api.github.com/users/octocat zaprezentuj jak go przetestować automatycznie w Postmanie (test weryfikujący status i wartości w response) oraz pobierz parametr "name" z response i zapisz go do zmiennej środowiskowej. Wynik umożliwiający odczyt i poprawne działanie zapisz w plikach. 

2. Dla endpointu https://api.github.com/users/octocat w Python rozpisz test wraz z drzewem klas (pattern) + asercje na dowolne pola/wartości 

Pamiętaj o zastosowaniu dobrych praktyk pisania testów.  

Projekt umieść na dowolnym repozytorium i udostępnij nam link. 


## Technologies
Postman\
Pytest\
Behave Restful
	

## Postman
In the main folder, Postman collection and environment is provided.

In order to run them Postman is required:
https://www.postman.com/downloads/

How to import the collection and environment:
https://learning.postman.com/docs/getting-started/importing-and-exporting-data/


## Pytest
Please install poetry:
https://python-poetry.org/docs/#installing-with-the-official-installer

To check if you have it installed properly, please run:
```bash
poetry version
```

In pytest folder please run:
```bash
poetry shell
```
This will create a virtualenv

After that please run:
```bash
poetry install
```

With the above steps covered you can run the tests by using simply:
```bash
poetry run pytest
```


## Behave Restful
Please install poetry:
https://python-poetry.org/docs/#installing-with-the-official-installer

To check if you have it installed properly, please run:
```bash
poetry version
```

In behave_restful folder please run:
```bash
poetry shell
```
This will create a virtualenv

After that please run:
```bash
poetry install
```

With the above steps covered you can run the tests by using simply:
```bash
poetry run behave
```

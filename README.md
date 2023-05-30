# Prosta aplikacja Spring Boot z encjami JPA i Swagger

Ta aplikacja jest niewielkim przykładem aplikacji opartej na frameworku Spring Boot, która korzysta z encji JPA. Aplikacja zarządza informacjami o skoczkach, konkursach i rodzajach skoczni. Umożliwia zapisywanie danych do bazy danych oraz udostępnia serwisy REST do pobierania informacji o skoczkach.

## Encje JPA
Aplikacja zawiera trzy główne encje JPA:

- Skoczek (z polami: imię, nazwisko, data urodzenia)
- Konkurs (z polem: lokalizacja)
- Rodzaj (z polem: nazwa)

Relacje między encjami są następujące:

- Jeden skoczek może startować w wielu konkursach, a w jednym konkursie może startować wielu skoczków.
- Każdy konkurs może mieć tylko jeden rodzaj.

##  Sposób wstrzykiwania zależności
W aplikacji zastosowano wstrzykiwanie zależności za pomocą konstruktora, zgodnie z zasadami SOLID.

## Inicjalizacja bazy danych
Aplikacja zawiera kod Javy, który inicjalizuje bazę danych przykładowymi informacjami. Możesz go uruchomić, aby zasilić bazę danych przed użyciem aplikacji.

## Serwisy REST
Aplikacja udostępnia cztery serwisy REST:

- /jumpers (GET): Zwraca listę wszystkich skoczków w formacie JSON.
- /jumpers/{id} (GET): Zwraca informacje o konkretnym skoczku na podstawie podanego identyfikatora (id) w formacie JSON.
- /jumpers_competition (GET): Zwraca listę wszystkich skoczków wraz z informacjami o konkursach, w których uczestniczyli w formacie JSON.
- /jumpers_competition/{id} (GET): Zwraca informacje o konkretnym skoczku wraz z informacjami o konkursach, w których uczestniczył na podstawie podanego identyfikatora (id) w formacie JSON.

## Swagger
Aplikacja wykorzystuje Swagger, aby udostępnić konsolę API do interakcji z serwisami REST. Po uruchomieniu aplikacji, możesz uzyskać dostęp do konsoli API Swagger pod adresem: http://localhost:8080/swagger-ui/. W konsoli API Swagger możesz eksplorować dostępne punkty końcowe i testować je.

## Konsola bazy danych H2
Aplikacja korzysta z bazy danych H2, która jest w pamięci. Po uruchomieniu aplikacji, możesz uzyskać dostęp do konsoli bazy danych H2 pod adresem: http://localhost:8080/h2-console/. W konsoli bazy danych H2 możesz przeglądać dane i wykonywać zapytania SQL.

## Uruchamianie aplikacji
Aby uruchomić aplikację, sklonuj ten projekt z repozytorium GitHub i uruchom go w swoim środowisku deweloperskim. Następnie wykonaj kroki opisane w sekcji "Inicjalizacja bazy danych" oraz uruchom aplikację. Po uruchomieniu, możesz używać serwisów REST do pobierania informacji o skoczkach oraz zyskasz dostęp do konsoli API Swagger i konsoli bazy danych H2.

---

# Simple Spring Boot Application with JPA Entities and Swagger
This application is a small example of a Spring Boot application that utilizes JPA entities. The application manages information about jumpers, competitions, and types of ski jumps. It allows for data persistence to a database and provides REST services for retrieving jumper information.

## JPA Entities
The application consists of three main JPA entities:

- Jumper (with fields: first name, last name, date of birth)
- Competition (with field: location)
- Jump Type (with field: name)

The relationships between the entities are as follows:
- A jumper can participate in multiple competitions, and a competition can have multiple jumpers.
- Each competition can have only one jump type.

## Dependency Injection Approach
The application employs constructor-based dependency injection, following the principles of SOLID.

## Initializing the Database
The application includes Java code that initializes the database with sample information. You can run it to populate the database before using the application.

## REST Services
The application provides four REST services:

- /jumpers (GET): Returns a list of all jumpers in JSON format.
- /jumpers/{id} (GET): Returns information about a specific jumper based on the provided identifier (id) in JSON format.
- /jumpers_competition (GET): Returns a list of all jumpers along with information about the competitions they participated in, in JSON format.
- /jumpers_competition/{id} (GET): Returns information about a specific jumper along with information about the competitions they participated in based on the provided identifier (id) in JSON format.
Swagger
The application utilizes Swagger to provide an API console for interacting with the REST services. After running the application, you can access the Swagger API console at: http://localhost:8080/swagger-ui/. In the Swagger API console, you can explore the available endpoints and test them.

## H2 Database Console
The application uses an in-memory H2 database. After running the application, you can access the H2 database console at: http://localhost:8080/h2-console/. In the H2 database console, you can browse data and execute SQL queries.

## Running the Application
To run the application, clone this project from the GitHub repository and launch it in your development environment. Then, follow the steps described in the "Initializing the Database" section and start the application. Once running, you can use the REST services to retrieve jumper information and access the Swagger API console and H2 database console.


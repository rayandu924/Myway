# MyWay/myway/lib

Ce projet Flutter utilise une architecture inspirée du "Clean Architecture" pour une meilleure maintenabilité, testabilité et évolutivité.

## Structure de l'Architecture

### `lib/`

- `main.dart` : Point d'entrée de l'application.

### `lib/src/`

Contient le cœur de l'application.

#### `presentation/`

- `screens/` : Chaque écran de l'application.
- `widgets/` : Widgets réutilisables.
- `themes/` : Personnalisation des thèmes.

#### `domain/`

- `entities/` : Modèles de données fondamentaux.
- `repositories/` : Abstractions pour accéder aux sources de données.
- `use_cases/` : Logique métier (cas d'utilisation).

#### `data/`

- `models/` : Modèles de données pour la couche de données.
- `datasources/` : Sources de données (API, base de données locale).
- `repositories_impl/` : Implémentations concrètes des repositories.

### `config/`

Configuration globale et environnements.

### `core/`

- `utils/` : Fonctions utilitaires et helpers.
- `constants/` : Constantes globales.
- `error/` : Gestion des erreurs et exceptions.

### `localization/`

Gestion de la localisation.

### `routes/`

Gestion des routes et navigation.

### `assets/`

Ressources statiques (images, polices, etc.).

### Tests

- `test/` : Tests unitaires, d'intégration, et de widgets.

## Installation et Exécution

Expliquez ici comment installer et exécuter votre projet Flutter.

## Contribution

Directives pour contribuer au projet.

## Licence

Informations sur la licence du projet.

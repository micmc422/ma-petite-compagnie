# Guide de contribution

## Workflow Git

### Branches

- `main` : branche principale, toujours stable
- `feature/*` : branches de fonctionnalités

### Créer une branche

```bash
git checkout main
git pull origin main
git checkout -b feature/ma-fonctionnalite
```

### Conventions de nommage des branches

- `feature/nom-fonctionnalite` : nouvelle fonctionnalité
- `fix/description-bug` : correction de bug
- `refactor/description` : refactoring

## Issues

Tout travail commence par une issue.

### Labels obligatoires

Un label de groupe fonctionnel :

- `production`
- `planning`
- `finance`
- `communication`
- `transverse`

### Labels complémentaires

- `bug` : correction de bug
- `feature` : nouvelle fonctionnalité
- `tech` : technique
- `ux` : amélioration UX

## Merge Requests

### Règles de validation

- 2 approvals minimum :
  - 1 approval d'un membre du même groupe
  - 1 approval d'un autre groupe
- L'auteur ne peut pas approuver sa propre MR
- Toutes les discussions doivent être résolues

## Conventions de code

### Style

- ESLint + Prettier configurés
- Pas de `any` en TypeScript
- Noms de variables et fonctions en français

### Tests

- Écrire des tests pour les nouvelles fonctionnalités

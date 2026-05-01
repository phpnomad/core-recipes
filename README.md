# PHPNomad Core Recipes

Core scaffolding recipes for PHPNomad applications. Consumed by `phpnomad/cli` via composer-based kit discovery.

## Installation

```bash
composer require phpnomad/core-recipes --dev
```

The CLI auto-discovers any installed package whose `composer.json` declares `extra.phpnomad.recipes`. After installation, `phpnomad recipes:list` will show the recipes provided by this kit.

## Usage

Each recipe is referenced as `phpnomad/<recipe-name>`:

```bash
phpnomad make --from=phpnomad/datastore '{"name":"Order","initializer":"App\\AppInit"}'
phpnomad make --from=phpnomad/listener '{"name":"SendWelcomeEmail","event":"App\\Events\\UserCreated","initializer":"App\\AppInit"}'
```

## Recipes provided

| Recipe | Purpose |
|---|---|
| `phpnomad/command` | CLI command class |
| `phpnomad/controller` | REST controller |
| `phpnomad/database-datastore` | Datastore backed by a database table (composes datastore + table + database-handler) |
| `phpnomad/database-handler` | Database handler implementation for a datastore |
| `phpnomad/datastore` | Datastore with interface and handler interface |
| `phpnomad/event` | Event class |
| `phpnomad/facade` | Facade proxying an interface |
| `phpnomad/graphql-type` | GraphQL type definition |
| `phpnomad/initializer` | Initializer class |
| `phpnomad/listener` | Event listener |
| `phpnomad/model` | Data model class |
| `phpnomad/model-adapter` | Adapter converting between two model representations |
| `phpnomad/mutation` | Mutation handler |
| `phpnomad/table` | Database table schema |
| `phpnomad/task` | Task class |
| `phpnomad/task-handler` | Task handler |

## Authoring your own kit

Any composer package can ship recipes by declaring them in `composer.json`:

```json
{
  "extra": {
    "phpnomad": {
      "recipes": "path/to/recipes/",
      "templates": "path/to/templates/"
    }
  }
}
```

Recipes inside the kit are referenced as `<your-vendor>/<recipe-name>`.

## License

MIT

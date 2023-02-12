# deno

deno default project codespace template

## setup

Only needed to run if not in a codespace with the default container.

```bash

. .devcontainer/scripts/tools.sh

```

## running

```bash

deno init

```

From there its all deno goodness!

```bash
✅ Project initialized
Run these commands to get started

  # Run the program
  deno run main.ts

  # Run the program and watch for file changes
  deno task dev

  # Run the tests
  deno test

  # Run the benchmarks
  deno bench
```

## deno.json edits

https://deno.land/manual@v1.30.3/getting_started/configuration_file

```json
{
  "compilerOptions": {
    "allowJs": true,
    "lib": ["deno.window"],
    "strict": true
  },
  "tasks": {
    "dev": "deno run --watch main.ts",
    "start": "deno run main.ts"
  },
  "lint": {
    "files": {
      "include": ["src/"],
      "exclude": ["src/testdata/"]
    },
    "rules": {
      "tags": ["recommended"],
      "include": ["ban-untagged-todo"],
      "exclude": ["no-unused-vars"]
    }
  },
  "fmt": {
    "files": {
      "include": ["src/"],
      "exclude": ["src/testdata/"]
    },
    "options": {
      "useTabs": true,
      "lineWidth": 80,
      "indentWidth": 4,
      "semiColons": false,
      "singleQuote": true,
      "proseWrap": "preserve"
    }
  },
  "test": {
    "files": {
      "include": ["src/"],
      "exclude": ["src/testdata/"]
    }
  }
}
```

## tsconfig if needed

https://deno.land/manual@v1.30.3/advanced/typescript/configuration

```json
{
  "compilerOptions": {
    "allowJs": true,
    "checkJs": true,
    "esModuleInterop": true,
    "experimentalDecorators": true,
    "inlineSourceMap": true,
    "isolatedModules": true,
    "jsx": "react",
    "lib": ["deno.window"],
    "module": "esnext",
    "moduleDetection": "force",
    "strict": true,
    "target": "esnext",
    "useDefineForClassFields": true,
    "types": ["https://deno.land/x/pkg@1.0.0/types.d.ts"]
  }
}
```

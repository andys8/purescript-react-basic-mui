# purescript-react-basic-mui

Purescript bindings for [Material-UI](https://material-ui.com/) built on top of [purescript-react-basic](https://github.com/lumihq/purescript-react-basic).

## Status

It seems that we are during the final round of the API and component testing and that we have settled down on the API based on the `Row.Union` regarding required / optional props representation. We don't want to release autogenerated components without testing them and without providing basic usage examples. This is our main focus at the moment.
You can find all already mirgrated components in the [_./src/MUI/Core_](./src/MUI/Core). All other components are prepared for the migration but we are not able to test them at once.

### Please help us with component testing

If you want to help us push development of the next release forward please take a look into [_./codegen/Main.purs_](./codegen/Main.purs) and try to migrate any of the commented and predefined component stub there. When you are done with codegen please add a new component to the [_./examples/Main.purs_](./examples/Main.purs) and test it by running: `$ webpack-dev-server` and using a web browser.
In the case of any trouble please contact us through issue tracker or directly on the PS slack channel.

### What is still missing

#### Handling `root` configuration

We don't provide components constructors which allow you to change the `root` of it. What we mean by "the root" is represented by a `component` prop in the MUI. We plan to add this feature soon.

#### Handling subcomponents with props

There are many places in the MUI lib where we need to pass subcomponent and its props as a part of main component props (like `BackdropProps` and `BackdropComponent` in the case of `Modal`). Currently we handle such scenarios through unsafe `Foreign` value.

#### Theming

Some pieces of theming are ready to use. Others needs to be implemented / migrated into `MUI.System` namespace.

## Codegen and testing workflow

### The project structure

We use "flat monorepo" (no subprojects) approach to simplify usual _codegen change -> codegen run -> test component render_ cycle. You can find three _*.dhall_ projects files: _spago.dhall_, _examples.dhall_, _codegen.dhall_ and a common _packages.dhall_ file. There are three related source directories in the project: _./src_, _./examples_, _./codegen_.

### Codegen

#### Components

To compile and run codegen and generate a single component you can use:

```purescript
$ spago run --node-args "codegen -c Button" --main Codegen.Main --config codegen.dhall
```

If you want to regenerate all components (which you should do before any PR) you should run:

```purescript
$ ./bin/codegen.sh
```

To compile just the code from the library (./src):

```purescript
$ spago build --config spago.dhall
```

#### Icons

This library doesn't contain any ready to use icon modules. When we tried to provide the whole icon set in the past it caused a huge slowdown of compilation time and problematic IDE rebuilds / startups (it is possible that this is not an issue anymore as the latest _purs_ releases included some performance/caching improvements).

Please don't worry because it is really easy to write icon bindings by hand or use simple command which generates icon module for you.

##### Usage

When you have ready to use icon binding (let say `menu`) you can use it by calling `icon` or `iconWithStyles`:

```purescript
import MUI.Icons.Types (icon, iconWithStyles)

jsx = icon menu {}

jsx' = iconWithStyles (\theme -> { root: jss { marginRight: theme.spacing 2.0 }}) menu {}
```

##### Anatomy

It is easy to write icon bindings by hand. All we need is a import on the JS side:

```javascript
exports.mail = require('@material-ui/icons/Mail').default;
```

and an import on the PS side:

```purescript
import MUI.Icons.Types (Icon) as MUI.Icons.Types

foreign import mail :: MUI.Icons.Types.Icon
```

##### Codegen

You can use icon codegen command directly from your project directory. The first step is installation of appropriate JS dependencies:

```
$ npm install '@material-ui/core' '@material-ui/icons' 'react' 'react-dom' 'typescript' 'fs-extra'
```

To generate `Menu` icon modules please use a command like the one below but with appropriate library `VERSION` number (in the path to _codegen.dhall_ and to sources dir):

```
$ spago run --path '.spago/react-basic-mui/VERSION/codegen/**/*.purs' --node-args "codegen -i Menu" --main Codegen.Main --config .spago/react-basic-mui/VERSION/codegen.dhall

[info] Build succeeded.
Writing: ./src/MUI/Icons/Menu.js
Writing: ./src/MUI/Icons/Menu.purs
```

### Testing

To run test app please use:

```purescript
$ spago build --config examples.dhall
$ webpack-dev-server
```

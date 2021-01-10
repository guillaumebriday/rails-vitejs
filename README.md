# Rails and Vite.js

[![](https://img.shields.io/github/license/guillaumebriday/rails-vitejs)](https://github.com/guillaumebriday/rails-vitejs)

- [Concept Overview](#concept-overview)
- [How it works](#how-it-works)
- [Getting started](#getting-started)
  - [Install](#install)
- [Contributing](#contributing)
- [License](#license)

## Concept Overview

This project shows how to build an application with both [Rails](https://rubyonrails.org/) and [Vite.js](https://vitejs.dev) in the same repo.

It **does not** use the Rails gem [Webpacker](https://github.com/rails/webpacker) to manage JavaScript and CSS. It's fully delegated to Vite.js.

## How it works

During development, we don't need to build assets, so we are using the Vite.js server on port `3001`.

In production, we need to build assets in the `public` folder with `yarn build` command.

To prevent conflicts with the `public` folder, I changed the Vite.js `root` option in the `vite.config.js` file.

## Getting started

### Install

Development environment requirements :
- [Ruby](https://www.ruby-lang.org/en/)
- [Node](https://nodejs.org/en/)

```bash
$ git clone https://github.com/guillaumebriday/rails-vitejs.git && cd rails-vitejs
```

To run the backend
```bash
$ bundle
$ bundle exec rails s
```

To run the Frontend:
```bash
$ yarn
$ yarn dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.

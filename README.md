# My Blog

Made using <a href="https://github.com/piharpi/jekyll-klise" target="_blank"
rel="noopener">jekyll-klise</a>

## Install

Run local server:

```bash
$ git clone https://github.com/creator54/creator54.github.io.git new-site
$ cd creator54.github.io
$ bundle install
$ bundle exec jekyll serve
```

On Nix:

```
$ nix-shell
$ bundle exec jekyll build #for rebuilding
$ bundle exec jekyll serve #for live server
```

On Docker

```
docker build . -t blogger
docker run --rm -it -p 4000:4000 blogger/latest
```

Navigate to `localhost:4000`.

## License

This project is open source and available under the [MIT License](LICENSE).


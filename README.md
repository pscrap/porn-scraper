# porn-scraper
> Scrapes porn galleries from the most popular porn websites.

porn-scraper is a collection of scripts for scraping galleries (and in future - videos) from the most popular porn sites.

## Installation

OS X & Linux:

```sh
git clone https://github.com/pscrap/porn-scraper.git
cd porn-scraper
chmod +x *.sh
```
Windows:

You'll probably need to install Ubuntu on Windows 10 as per this tutorial:
https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows#0

Then from the Ubuntu terminal execute:
```sh
sudo apt install git
git clone https://github.com/pscrap/porn-scraper.git
cd porn-scraper
chmod +x *.sh
```

## Usage example

The scripts accept two arguments, one of which is the gallery url, the other one is the folder under which you want to download the images. For example:
```sh
./xhamster.com.sh [gallery URL] nice-gallery
```
This will create a folder "nice-gallery" in the upper directory, and scrape the images inside it.

## Release History

* 0.1.0
    * The first proper release
    * CHANGE: added the proper `README` file, added support for the `backbook.me`, `imagearn.com`, `porevo.info`, `xhamster.com`, `xvideos.com`.

## Meta

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/pscrap/porn-scraper](https://github.com/pscrap/)

## Contributing

1. Fork it (<https://github.com/pscrap/porn-scraper/fork>)
2. Create your feature branch (`git checkout -b feature/fooBar`)
3. Commit your changes (`git commit -am 'Add some fooBar'`)
4. Push to the branch (`git push origin feature/fooBar`)
5. Create a new Pull Request

<!-- Markdown link & img dfn's -->
[wiki]: https://github.com/pscrap/porn-scraper/wiki

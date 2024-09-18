# ドラクエ命

This is a book that describes how the data structure and program of Dragon Quest
series are.

## How to Build

```console
$ git clone https://github.com/showa-yojyo/dqbook.git
...
$ git clone --single-branch --branch https://github.com/showa-yojyo/dqbook.git dqbook-gh-pages # developers only
...
$ cd dqbook
$ make -C /src/jp html-chunk
...
$ ./src/tools/gh-pages.sh # developers only
...
```

The document will be generated in the directory `dqbook/build/jp/html-chunk`.

### Requirements

To set up the build environment, run the following command:

```console
$ sudo apt update
...
$ sudo apt install make docbook-xml docbook-xsl libxml2-utils xsltproc fop
```

* [Docbook][1] (version 4.5; docbook, docbook-xsl)
* [GNU Make][2] tool
* [Xsltproc][3] program
* `xmllint` program

## License

See the [LICENSE](./LICENSE) file.

## Authors

* プレハブ小屋
  * GitHub: [showa-yojyo](https://github.com/showa-yojyo/)
  * Docker Hub: [showayojyo](https://hub.docker.com/u/showayojyo)
  * E-mail: <yojyo@hotmail.com>
  * Twitter: [showa_yojyo](https://twitter.com/showa_yojyo)

[1]: http://www.docbook.org/ "Docbook"
[2]: https://www.gnu.org/software/make/ "GNU Make"
[3]: http://xmlsoft.org/XSLT/xsltproc2.html "xsltproc"

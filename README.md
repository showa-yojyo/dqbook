# ドラクエ命

This is a book that describes how the data structure and program of
Dragon Quest series are.

## How to Build

For example, do as follows:

```console
bash$ git clone https://github.com/showa-yojyo/dqbook.git
bash$ git clone --single-branch --branch https://github.com/showa-yojyo/dqbook.git dqbook-gh-pages # developers only
bash$ cd dqbook/src/jp
bash$ make html-chunk
bash$ src/tools/gh-pages.sh # developers only
```

If you don't use Git, you have to download the repository archive file from
the project page.

The document will be generated in the directory `dqbook/src/jp/book/html-chunk`.

### Requirements

* [Docbook][1] (version 4.5; docbook, docbook-xsl)
* Make tool
* Xsltproc tool
* `xmllint` program (libxml2-utils)

## License

See the ``LICENSE`` file under the installation directory.

## Authors

* プレハブ小屋
  * Web site (GitHub): [プレハブ小屋](https://github.com/showa-yojyo/)
  * E-mail: yojyo@hotmail.com
  * Twitter: [@showa_yojyo](https://twitter.com/showa_yojyo)

[1]: http://www.docbook.org/ "Docbook"

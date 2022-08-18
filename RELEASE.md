# How to release dqbook

This file describes how to release the source files.

## Step 1: Create a release branch

First, create a release branch from the branch `develop`.

```console
bash$ git checkout -b release-x.y develop
```

In this instruction, let `x.y` be the version defined by `BOOK_VERSION` in file
`src/tools/Makefile.base-vars`.

## Step 2: Update `BOOK_VERSION`

Open the file and edit `BOOK_VERSION` so that `dev` suffix is removed.
Then, commit this change.

```console
bash$ git add src/tools/Makefile.base-vars
bash$ git commit -m "Remove dev suffix from version number"
```

## Step 3: Build documents and fix bugs if necessary

Build DocBook XML files and get ready to release the branch `gh-pages` as well.

```console
bash$ cd src
bash$ make -C jp html-chunk
bash$ ./tools/gh-pages.sh
```

Note that `gh-pages.sh` clones `src/jp/book/html-chunk` to the directory
`dqbook-gh-pages` that might be out of your working repository.

## Step 4: Merge everything to the branch `master`

Be careful if there are files renamed.

```console
bash$ git checkout master
bash$ git merge --squash -X theirs release-x.y
```

## Step 5: Push `master` and a new tag to GitHub

```console
bash$ git push
bash$ git tag -a x.y -m "Release x.y" master
bash$ git push --tags
```

## Step 6: Go back to the branch `develop`

Merge the branch `release-x.y` to the branch `develop` as follows:

```console
bash$ git checkout develop
bash$ git merge release-x.y
bash$ git branch -d release-x.y
```

## Step 7: Update `BOOK_VERSION` again

Bump `x.y` to `x.(y + 1)` in `BOOK_VERSION` and append `dev` suffix (e.g. from
1.16 to 1.17dev).

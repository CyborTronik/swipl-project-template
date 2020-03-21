# Motivation
Lack of [maven](http://maven.apache.org/guides/getting-started/maven-in-five-minutes.html) like tool for [Prolog](https://www.swi-prolog.org/) is to noticeable, so I've created this repo in a similar manner for a better usability and common flow across different projects.

# Description
A sample `Hello World` template project for SWI-Prolog.
You shall add the project properties into `pack.pl` and build.

# Build Flow
For distribution you have to run `make` command from terminal and check the archive file under `distribution` folder (it shall contain sources, generated docs and the binary of current app).
In case you need the binary only then run `make build`. It will check the tests and then create the executable file under `distribution/bin` folder.

Initial supported phases for `make` are:
 - test
 - build
 - doc
 - clean (will delete `distribution` folder)
 - package (default, includes all previous excluding `clean`)

# Licence
Long story short: MIT see LICENCE file.
In case you need another licence feel free to create a PR with double license for convience.

Any contribution is welcome.

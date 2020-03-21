Lack of `maven` like tool for Prolog is too noticeable, so I've created this repo in a similar manner for a better usability and common flow across different projects.

A sample `Hello World` template project for SWI-Prolog.
You shall add project properties into `pack.pl`.

For distribution you have to run `make` and check the archive file under `distribution` folder (it shall contain sources, generated docs and binary of the current app).
In case you need binary only run `make build` it will check the tests and then create the executable under `distribution/bin` folder.

Supported phases for `make` are:
 - test
 - build
 - doc
 - clean (will delete `distribution` folder)
 - package (default, includes all previous excluding `clean`)

In case you need another licence feel free to create a PR with double license for convience.

Any contribution is welcome.
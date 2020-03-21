version:=$(shell swipl -q -s pack -g 'version(V),writeln(V)' -t halt)
name:=$(shell swipl -q -s pack -g 'name(N),writeln(N)' -t halt)
packfile=$(name)-$(version).tgz

package: build doc
	@tar cvzf distribution/$(packfile) distribution/bin src pack.pl README.md LICENSE

test:
	@swipl -s src/tests/unit/prolog/app.plt -g run_tests,halt -t 'halt(1)'

build: test check_dirs
	@swipl -o distribution/bin/app -g main --stand_alone=true -O -q -c src/main/prolog/app.pl

doc: check_dirs
	@swipl -q -t 'doc_save(src/main/prolog, [doc_root("distribution/doc"),format(html),title($(name)),if(true),recursive(true)])'

check_dirs:
	@mkdir -p distribution/bin

clean:
	@rm -rf distribution

.PHONY: clean test package build doc check_dirs
call:: clean all
all:: start
start:: node_modules ; yarn start
build:: node_modules ; yarn build
node_modules: package.json ; yarn
clean::
	rm -fr node_modules __pycache__ .emacs.d dist
	rm -fr bun.lockb yarn.lock package-lock.json
	find . -name '*~' -o -name '.*~' | xargs rm -fr
	tree -a . -I .git

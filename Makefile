
build: components bootstrap-type.css
	@component build --dev

bootstrap-type.css: bootstrap-type.less
	node_modules/.bin/recess bootstrap-type.less --compile > bootstrap-type.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean

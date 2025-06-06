install:
	npm ci

lint:
	npx eslint . --fix

test:
	npm run test

format:
	black .

setup:
	bash scripts/setup.sh

validate:
	bash scripts/validate.sh

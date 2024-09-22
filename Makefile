
.PHONY: install
install:  clean ## Install project in development mode
	@echo "=> Installing project..."
	@uv sync --force-reinstall --dev
	@nodeenv --python-virtualenv
	@npm install

.PHONY: clean
clean:  ## Remove generated project files
	@echo "=> Cleaning project..."
	@rm -rf .venv/ .*_cache/ .coverage  *.egg-info/ node_modules/

.PHONY: update
update:  ## Update project dependencies
	@echo "=> Updating project dependencies..."
	@uv sync --upgrade

.PHONY: lint
lint:  ## Lint and format codebase
	@echo "=> Linting and formatting backend codebase..."
	-@uv tool run ruff check --fix .
	-@uv tool run ruff format
	@echo "=> Linting and formatting frontend codebase..."
	-@prettier --ignore-unknown ./**/*.{html,css,js,yml,json} --write

.PHONY: test
test:  ## Run tests
	@echo "=> Running tests..."
	@uv tool run pytest .

.PHONY: serve
serve:  ## Run the project in development mode
	@echo "=> Running project..."
	@#uv run app run --debug --reload  # TODO: troubleshoot issue with uv init --app
	@uv run litestar run --debug --reload



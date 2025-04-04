present:
	presenterm IA.md --publish-speaker-notes

notes:
	presenterm IA.md --listen-speaker-notes

# Build the Docker image required to generate the PDF
build:
	docker image build --tag presenterm .

pdf:
	docker run --rm --volume $PWD:/app presenterm

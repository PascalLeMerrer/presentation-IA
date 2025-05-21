present:
	presenterm IA.md --publish-speaker-notes

notes:
	presenterm IA.md --listen-speaker-notes

pdf:
	@echo "--------------------------------------------------------------------------------"
	@echo "Requires weasy print to be installed. On MacOS, use homebrew to install it."
	@echo "For the speaker notes to be exported, you have to remove the enclosing comments."
	@echo "--------------------------------------------------------------------------------"
	@echo ""
	presenterm --export-pdf IA.md

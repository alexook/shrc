all:build

HOME_PATH = $(HOME)


build:
	@echo "Hello Makefile build"
	@bash deploy.sh




clean:
	@sed -i "/^# >>> proxy configure >>>/,/# <<< proxy configure <<<$$/d" $(HOME_PATH)/.bashrc;
	@echo "Proxy configure clean successfully."


.PHONY: all build clean dist install uninstall

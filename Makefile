THEMES_DIR := ../..
BUILD_OPTS := -D -v --themesDir $(THEMES_DIR)
BUILD_DIR := exampleSite

all:

example:
		cd $(BUILD_DIR) && hugo $(BUILD_OPTS)

devel:
		cd $(BUILD_DIR) && hugo server $(BUILD_OPTS)

netlify:
		# Netlify clones under folder "repo"
		cd .. && ln -s repo distillpub
		make example
build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

publish: build
	rsync -e ssh -havzP ./_site/ kyleniemeyer@pdx1-shared-a1-33.dreamhost.com:~/wssci.us/

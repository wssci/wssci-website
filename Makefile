build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

publish: build
	rsync -e ssh -havzP ./_site/ kyleniemeyer@cavejunction.dreamhost.com:~/wssci.us/

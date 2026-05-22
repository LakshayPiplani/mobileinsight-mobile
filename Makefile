all: apk_release install clean

.PHONY: apk install config dist debug release

config:
	python3.7 deploy.py config

dist:
	python3.7 deploy.py dist

apk:
	python3.7 deploy.py apk

apk_debug:
	python3.7 deploy.py apk debug

apk_release:
	python3.7 deploy.py apk release

install:
	python3.7 deploy.py install

clean_all:
	python3.7 deploy.py clean_all

clean:
	python3.7 deploy.py clean

clean_apk:
	python3.7 deploy.py clean_apk

clean_dist:
	# python3.7 deploy.py clean_dist
	p4a clean_dists
	p4a clean_builds
	p4a clean_bootstrap_builds
	p4a clean_all
	rm -fr ~/.python-for-android/dists/MobileInsight*

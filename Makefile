build:
	docker build -t nsgb/package-base-deb .

push: build
	docker push nsgb/package-base-deb

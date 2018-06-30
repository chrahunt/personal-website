.PHONY: server all

all:
	rm -rf public/* && \
		hugo && \
		cd public && \
		git add . && \
		git commit -m "rebuilding site $$(date)" && \
		git push origin master

server:
	hugo server --disableLiveReload

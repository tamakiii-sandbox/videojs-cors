.PHONY: help setup install build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup:

install:

build: \
	public/dist/sample_1280x720_surfing_with_audio.mp4 \
	public/dist/sample_1280x720_surfing_with_audio.m3u8

# https://filesamples.com/samples/video/mp4/sample_1280x720_surfing_with_audio.mp4
public/dist/sample_1280x720_surfing_with_audio.mp4: | public/dist
	curl https://filesamples.com/samples/video/mp4/sample_1280x720_surfing_with_audio.mp4 -o $@

public/dist/sample_1280x720_surfing_with_audio.m3u8: public/dist/sample_1280x720_surfing_with_audio.mp4 | public/dist
	ffmpeg -i $< -c:v copy -c:a copy -f hls -hls_time 9 -hls_playlist_type vod -hls_segment_filename "public/dist/video%3d.ts" $@

public/dist:
	mkdir -p $@

clean:
	rm -rf public/dist

%.pdf : %.svg
	cairosvg -d 120 -f pdf "$^" > "$@"

.PHONY: svgo
svgo:
	ls *.svg | parallel --bar 'svgo -p 2 --multipass -i {} -o {}2 && mv {}2 {}'

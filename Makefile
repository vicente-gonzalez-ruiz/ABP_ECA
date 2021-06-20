default:	show

clean:
	rm -f transparencias.slides.html

# https://nbconvert.readthedocs.io/en/latest/config_options.html
#https://nbconvert.readthedocs.io/en/latest/usage.html#reveal-js-html-slideshow

reveal.js:
	git clone https://github.com/hakimel/reveal.js.git
	#cd reveal.js
	#git checkout 3.5.0

transparencias.slides.html:	transparencias.ipynb
	jupyter nbconvert transparencias.ipynb --to slides  --reveal-prefix=reveal.js --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=default  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none

show:	transparencias.slides.html
	firefox transparencias.slides.html &

#	jupyter nbconvert transparencias.ipynb --to slides --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=default  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none

	#jupyter nbconvert transparencias.ipynb --to slides  --reveal-prefix reveal.js --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=default  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none

#	jupyter nbconvert transparencias.ipynb --to slides --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=default  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none --SlidesExporter.slideNumber="c/t"

#	jupyter nbconvert transparencias.ipynb --to slides  --no-input --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=serif  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none


#jupyter nbconvert [jupyter_notebook_name].ipynb --to slides --no-prompt --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --post serve 

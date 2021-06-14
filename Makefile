present:
	jupyter nbconvert transparencias.ipynb --to slides --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=default  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none --SlidesExporter.slideNumber="c/t"

#	jupyter nbconvert transparencias.ipynb --to slides  --no-input --post serve --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --SlidesExporter.reveal_theme=serif  --SlidesExporter.reveal_scroll=True  --SlidesExporter.reveal_transition=none


#jupyter nbconvert [jupyter_notebook_name].ipynb --to slides --no-prompt --TagRemovePreprocessor.remove_input_tags={\"to_remove\"} --post serve 

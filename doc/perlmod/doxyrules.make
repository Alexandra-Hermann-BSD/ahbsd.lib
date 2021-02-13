DOXY_EXEC_PATH = /Users/alexanderhermann/Projects/ahbsd.lib
DOXYFILE = /Users/alexanderhermann/Projects/ahbsd.lib/-
DOXYDOCS_PM = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/DoxyDocs.pm
DOXYSTRUCTURE_PM = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/DoxyStructure.pm
DOXYRULES = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxyrules.make
DOXYLATEX_PL = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxylatex.pl
DOXYLATEXSTRUCTURE_PL = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxylatex-structure.pl
DOXYSTRUCTURE_TEX = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxystructure.tex
DOXYDOCS_TEX = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxydocs.tex
DOXYFORMAT_TEX = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxyformat.tex
DOXYLATEX_TEX = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxylatex.tex
DOXYLATEX_DVI = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxylatex.dvi
DOXYLATEX_PDF = /Users/alexanderhermann/Projects/ahbsd.lib/doc/perlmod/doxylatex.pdf

.PHONY: clean-perlmod
clean-perlmod::
	rm -f $(DOXYSTRUCTURE_PM) \
	$(DOXYDOCS_PM) \
	$(DOXYLATEX_PL) \
	$(DOXYLATEXSTRUCTURE_PL) \
	$(DOXYDOCS_TEX) \
	$(DOXYSTRUCTURE_TEX) \
	$(DOXYFORMAT_TEX) \
	$(DOXYLATEX_TEX) \
	$(DOXYLATEX_PDF) \
	$(DOXYLATEX_DVI) \
	$(addprefix $(DOXYLATEX_TEX:tex=),out aux log)

$(DOXYRULES) \
$(DOXYMAKEFILE) \
$(DOXYSTRUCTURE_PM) \
$(DOXYDOCS_PM) \
$(DOXYLATEX_PL) \
$(DOXYLATEXSTRUCTURE_PL) \
$(DOXYFORMAT_TEX) \
$(DOXYLATEX_TEX): \
	$(DOXYFILE)
	cd $(DOXY_EXEC_PATH) ; doxygen "$<"

$(DOXYDOCS_TEX): \
$(DOXYLATEX_PL) \
$(DOXYDOCS_PM)
	perl -I"$(<D)" "$<" >"$@"

$(DOXYSTRUCTURE_TEX): \
$(DOXYLATEXSTRUCTURE_PL) \
$(DOXYSTRUCTURE_PM)
	perl -I"$(<D)" "$<" >"$@"

$(DOXYLATEX_PDF) \
$(DOXYLATEX_DVI): \
$(DOXYLATEX_TEX) \
$(DOXYFORMAT_TEX) \
$(DOXYSTRUCTURE_TEX) \
$(DOXYDOCS_TEX)

$(DOXYLATEX_PDF): \
$(DOXYLATEX_TEX)
	pdflatex -interaction=nonstopmode "$<"

$(DOXYLATEX_DVI): \
$(DOXYLATEX_TEX)
	latex -interaction=nonstopmode "$<"

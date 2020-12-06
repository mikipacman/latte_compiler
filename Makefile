.PHONY : all clean

GRAMA_FOLDER = grama
SRC_FOLDER = src
PARSER_FILES = $(GRAMA_FOLDER)/ErrM.hs $(GRAMA_FOLDER)/LexLatte.hs $(GRAMA_FOLDER)/ParLatte.hs $(GRAMA_FOLDER)/PrintLatte.hs

all : latc_llvm

%.hs : %.y
	happy -gca $<

%.hs : %.x
	alex -g $<

generate_grama:
	bnfc -m $(SRC_FOLDER)/Latte.cf -o $(GRAMA_FOLDER)

latc_llvm : $(PARSER_FILES)
	ghc -i$(SRC_FOLDER):$(GRAMA_FOLDER) --make $(SRC_FOLDER)/run.hs $(SRC_FOLDER)/static.hs $(PARSER_FILES) -o $@

clean :
	-rm -f $(GRAMA_FOLDER)/*.hi $(GRAMA_FOLDER)/*.o $(GRAMA_FOLDER)/*.log $(GRAMA_FOLDER)/*.aux $(GRAMA_FOLDER)/*.dvi 
	-rm -f $(SRC_FOLDER)/*.hi $(SRC_FOLDER)/*.o $(SRC_FOLDER)/*.log $(SRC_FOLDER)/*.aux $(SRC_FOLDER)/*.dvi
	-rm -f latc_llvm

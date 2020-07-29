.PHONY: all clean

CC := xelatex
CV_DIR := cv_sections
CV_SRCS := $(wildcard $(CV_DIR)/*.tex)
DIST_DIR := dist

all: cv

.PHONY: cv
cv: $(DIST_DIR)/cv.pdf

$(DIST_DIR)/%.pdf: %.tex $(CV_SRCS) | $(DIST_DIR)
	$(CC) -interaction=nonstopmode -file-line-error -output-directory=$(@D) $<

$(DIST_DIR):
	mkdir $(DIST_DIR)

clean:
	rm -rf dist

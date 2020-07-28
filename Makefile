.PHONY: all

CC = xelatex
CV_DIR = cv_sections
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
DIST_DIR = dist

$(DIST_DIR)/cv.pdf: cv.tex $(CV_SRCS) | $(DIST_DIR)
	$(CC) -interaction=nonstopmode -file-line-error -output-directory=$(DIST_DIR) $<

all: $(DIST_DIR)/cv.pdf

clean:
	rm -rf dist

$(DIST_DIR):
	mkdir $(DIST_DIR)

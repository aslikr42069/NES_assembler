SCM ?= chicken-csc
SCM_FLAGS = CSC_OPTIONS='-I/usr/include/chicken/'
INPUT = src/main.scm
OUTPUT = nesassemble

default:
	$(SCM_FLAGS) $(SCM) $(INPUT) -o $(OUTPUT)

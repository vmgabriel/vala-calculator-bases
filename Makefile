PROGRAM = programa
INSTALL = opt/$(PROGRAM)

SRC = ./src
GUI = $(SRC)/GUI/*.vala
LIB = $(SRC)/LIB/*.vala
CTRL = $(SRC)/CTRL/*.vala
SQL = 

EXEC = $(SRC)/index.vala $(GUI) $(LIB) $(CTRL)

PKGS = --pkg gtk+-3.0 --pkg glib-2.0

ESPECIAL = 

VALACOPTS = -X -lm

BUILT_ROOT = 1

all:
	valac $(PKGS) $(VALACOPTS) $(EXEC) $(ESPECIAL) -o $(PROGRAM)

release: clean
	valac -X -O2 $(EXEC) -o main_release $(PKGS)

clean:
	@rm -v -fr *~ *.c *.h $(PROGRAM)

CC = i686-w64-mingw32-gcc
AES_INCLUDE_DIR = Src/Payloads/Aes/c
CFLAGS = -std=c99 -Wall -pedantic -O2 -I$(AES_INCLUDE_DIR)
SRC = $(wildcard Src/Crypter/*.c) $(wildcard Src/Payloads/Aes/c/*.c)
OBJ = $(SRC:.c=.o)
EXECUTABLE=hyperion.exe
 
all: hyperion
 
hyperion: $(OBJ)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $^

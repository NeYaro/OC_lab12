CC = gcc
CFLAGS =
LIBS = -lm

# Основная цель
calcul: calculate.o main.o
	$(CC) calculate.o main.o -o calcul $(LIBS)

# Правило для сборки object-файла calculate.o
calculate.o: calculate.c calculate.h
	$(CC) -c calculate.c $(CFLAGS)

# Правило для сборки object-файла main.o
main.o: main.c calculate.h
	$(CC) -c main.c $(CFLAGS)

# Цель для очистки
clean:
	rm -f calcul *.o *~
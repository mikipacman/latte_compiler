# General TODO
## Frontend (10 grudnia)
- struktura projektu/Makefile
- parser z BNFC
- ustalenie interfejsu (flagi)
- analiza składniowa
- analiza semantyczna
	- czy wszystkie zmienne są zadeklarowane
	- warning jak zmienna jest nieużyta
	- czy typy zmiennych się zgadzają 
	- czy funkcja zawsze daje wynik poprawnego typu

## Generacja kodu (7 stycznia)

## Rozszerzenia (25 stycznia)

# Linki
- https://www.youtube.com/watch?v=YULvnK0iCiI&feature=youtu.be
- https://www.mimuw.edu.pl/~ben/Zajecia/Mrj2020/latte.html

# TODO for later
- add specification of extensions

# TODO for today
- parser
	- rozpisać gramatykę, żeby działało
		- good
		- bad
		- extension


# List of what of things that must be checked
## Basic
1. When checking if function returns the right type every time note that you can (and should) ignore checking unreachable code -> `good/core003`, `good/core021`, `bad/bad008`, `bad/bad012`, `bad/bad025`
2. Warning if variable can be uninitialized (there exists some path from node that declares variable to node that checks its value and there is no assignment to for this variable on this path) -> `good/core005`
3. Lazy boolean expressions (dontCallMe) -> `good/core017`, `good/core024`
4. Correct variables visibility -> `good/core019` 
5. Void functions can either have a `return;` expression or not -> `good/core020`
6. Int variables are initialized to 0 -> `good/core022`
7. Unique function names
8. Musi być funkcja `main` zwracająca `int` bez argumentów
9. Można używać funkcji przed ich deklaracją
10. Można definiować funkcje tylko na górnym poziomie (?)
11. `false` domyślna wartość dla `bool`
12. Unique variable names inside one block -> `bad/bad007`
13. Brak niejawnych konwersji między typami
14. Predefined functions
15. Unique function parameter names
16. Using undeclared variable -> `bad/bad006`
17. Mismatch of types in assignment -> `bad/bad009`
18. 


```
void printInt(int)
void printString(string)
void error()
int readInt()
string readString()
```
15. Parameters for functions are passed as a value

## Extensions
1. 1D arrays
2. For each
```
  for (int x : a)
     printInt(x);
```	 
3. Array type can be function parameter and return value
4. Array `a.length` attribute
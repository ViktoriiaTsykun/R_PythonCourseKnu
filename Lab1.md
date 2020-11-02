## 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

```{r}
character <- "R Labs"
numeric <- 606.06
integer <- 3L
complex <- 6 - 3i
logical <- FALSE
```

## 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.

```{r}
v1 <- 5:75
v2 <- c(3.14, 2.71, 0, 13)
v3 <- rep(TRUE, 100)

v1
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35
[32] 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66
[63] 67 68 69 70 71 72 73 74 75

v2
[1]  3.14  2.71  0.00 13.00

v3
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [19] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [37] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [55] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [73] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [91] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
```

## 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind

```{r}
m1 <- matrix(data = c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), nrow = 4, ncol = 3)

m1
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```

```{r}
x <- c(0.5, 3.9, 0, 2)
y <- c(1.3, 131, 2.2, 7)
z <- c(3.5, 2.8, 4.6, 5.1)

m2 <- cbind(x, y, z)

m2
       x     y   z
[1,] 0.5   1.3 3.5
[2,] 3.9 131.0 2.8
[3,] 0.0   2.2 4.6
[4,] 2.0   7.0 5.1
```

## 4. Створити довільний список (list), в який включити всі базові типи.

```{r}
list <- list('R labs', 444.4, 5L, 89 + 2i, TRUE)

list
[[1]]
[1] "R labs"

[[2]]
[1] 444.4

[[3]]
[1] 5

[[4]]
[1] 89+2i

[[5]]
[1] TRUE
```

## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

```{r}
fact <- factor(c('baby', 'child', 'adult', 'child', 'baby'))

fact
[1] baby  child adult child baby 
Levels: adult baby child
```

## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

```{r}
naVector <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
match(NA, naVector)
[1] 5

sum(is.na(naVector))
[1] 3
```

## 7. Створити довільний data frame та вивести в консоль.

```{r}
dataFrame <- data.frame(go = c(T, F, T), look = c('Hello', 'Hi', 'Hey'), take = 4:6)
dataFrame
     go  look take
1  TRUE Hello    4
2 FALSE    Hi    5
3  TRUE   Hey    6
```

## 8. Змінити імена стовпців цього data frame.

```{r}
names(dataFrame) <- c('no', 'nook', 'nake')
dataFrame
     no  nook nake
1  TRUE Hello    4
2 FALSE    Hi    5
3  TRUE   Hey    6
```


% Определяем количество цифр
int: N = 6;

% Определяем переменные для цифр билета
array[1..N] of var 0..9: digits;

% Ограничения для уникальности цифр
constraint forall(i in 1..N) (
    forall(j in i+1..N) (
        digits[i] != digits[j]
    )
);

% Определяем сумму первых трех и последних трех цифр
var int: sum1 = digits[1] + digits[2] + digits[3];
var int: sum2 = digits[4] + digits[5] + digits[6];

% Ограничение на равенство сумм
constraint sum1 = sum2;

% Минимизация суммы всех цифр
var int: total_sum = sum(digits);
solve minimize total_sum;

% Выводим результат
output ["Ticket: \(digits)"];

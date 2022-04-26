// JS. HW_2

// Напишите валидационный скрипт используя функции 

//  1. Скрипт должен на вход принимать строку.
//  2. После проверки строки выводить в консоль сообщение где будет 
// конкретно написано, что не так в ведённой строке.
//  3. Минимум 5 символов в строке 
//  4. Максимум 64 символа в строке
//  5. В строке должны быть буквы
//  6. Должна быть хотя бы одна буква в верхнем регистре
//  7. Должна быть хотя бы одна цифра
//  8. Должна быть хотя бы одна @
//  9. Строка не должна быть пустой


let input = "7G879785пР@";
let result = "Это не совсем то, что нужно. Поправьте следующие моменты:"

//  Скрипт должен на вход принимать строку.
function validateString(input) {
    if(typeof input == "string") {
        return true;
    } else {
        result = result + " Неверный тип данных, требуется строка."
        return false;
    }
}

// Строка не должна быть пустой
function notEmptyString(input) {
    if(input != "") {
        return true;
    } else {
        result = result + " Поле не может быть пустым."
        return false;
    }
}

// Минимум 5 символов в строке 
function minSymbols(input) {
    if (typeof(input) == "string"){
    if(input.length >= 5) {
        return true;
    } else {
        result = result + " Слишком мало символов, нужно минимум 5."
        return false;
    }
    } else return false;
}

// Максимум 64 символа в строке
function maxSymbols(input) {
    if (typeof(input) == "string"){
    if(input.length <= 64) {
        return true;
    } else {
        result = result + " Слишком много символов, возможный максимум - 64."
        return false;
    }
} else return false;
}

// В строке должны быть буквы
function hasLetters(input) {
    if(/[a-яА-яa-zA-Z]/.test(input)) {
        return true;
    } else {
        result = result + " В строке должна быть хотя бы одна буква."
        return false;
    }
}

// Должна быть хотя бы одна буква в верхнем регистре
function capitalLetter(input) {
    if(/[А-ЯA-Z]/.test(input)) {
        return true;
    } else {
        result = result + " В строке должна быть хотя бы одна буква в верхнем регистре."
        return false;
    }
}

// Должна быть хотя бы одна цифра
function hasDigits(input) {
    if(/\d/.test(input)) {
        return true;
    } else {
        result = result + " В строке должна быть хотя бы одна цифра."
        return false;
    }
}

// Должна быть хотя бы одна @
function hasAtSign(input) {
    if(/@/.test(input)) {
        return true;
    } else {
        result = result + " В строке должна быть хотя бы один символ @."
        return false;
    }
}

let func1 = validateString(input)
let func2 = notEmptyString(input)
let func3 = minSymbols(input)
let func4 = maxSymbols(input)
let func5 = hasLetters(input)
let func6 = capitalLetter(input)
let func7 = hasDigits(input)
let func8 = hasAtSign(input)

// console.log (func1, func2, func3, func4, func5, func6, func7, func8)

function finalValidation() {
    if (func1 != true || func2 != true || func3 != true || func4 != true || func5 != true || func6 != true || func7 != true || func8 != true) {
        console.log(result);
    } else console.log("Вcё ОК! Принято!");
}

finalValidation()

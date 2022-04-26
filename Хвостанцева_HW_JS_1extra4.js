// 4***:
// Преобразовать задание 3* таким образом, чтобы возраст вводился используя функцию prompt 
// в привязанной верстке

let age_2 = 18;
let age_3 = 60;

const checkAge = function(age) {
    age = +age
    if(!isNaN(age)) {
        if(age < age_2) {
            console.log("You don't have access cause your age is " + age + ". It's less then " + age_2)
        }   else if (age >= age_2 && age < age_3) {
            console.log("Welcome!")
        }   else if(age > age_3) {
            console.log("Keep calm and watch Culture channel")
        }   else {
        console.log("Technical work")
        }
} else {console.log("Error! Age can only be a number")}
}

const result = prompt('Введите свой возраст', 18)
checkAge(result)



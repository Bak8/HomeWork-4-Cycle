//
//  main.swift


//  HomeWork 4 Cycle
//
//  Created by Atai Begaliev on 21/9/22.
//
// ДЗ№1
for item2 in 1...1000 {
    if item2 % 10 == 2{
    print(item2)
    }else if item2 % 10 == 3{
    print(item2)
    }else if item2 % 10 == 4{
    print(item2)
    }else if item2 % 10 == 5{
    print(item2)
    }
}

//Создать программу используя известные вам методы
//Рассчитать сумму кредита. Изначально сумма - 1000000 сом
//Процентная ставка в год - 24%
//С каждым годом % снижается на 1
//Рассчитать за какой срок человек сможет выплатить кредит, если на момент получения кредита его зарплата -
//20000 сом и каждые 2 месяца она увеличивается на 2000

//ДЗ №2
var loan: Float = 1000000.0
var rate: Float = 0.24
var payment: Float = 20000.0
var countMonth = 0
var total: Float = 0.0



func oneMonth () {
    if loan > payment {
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan += loan * (rate / 12) - payment
        loan -= payment
        total += payment
    }
    if loan > payment {
        
        payment += 1000
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan += loan * (rate / 12)
        loan -= payment
        total += payment
    }
    if loan < payment {
        payment = loan
        total += payment
        countMonth += 1
        print("№\(countMonth) кредит-\(loan) выплата-\(payment) остаток-\(loan-payment)")
        loan += loan * (rate / 12)
        loan = 0
        payment = 0
        print("итого выплата -", total, "сом за", countMonth, "месяцев")

    }
}

func oneYear () {
    for _ in 1...12 {
        oneMonth()
    }
    rate -= 1
}

while loan - payment != 0 {
    oneYear()
}



//Доп Задание
var text = "Пришла , осень, листья, опадают, солнце, уже, не, греет, как, летом, животные, запасают, еду, к, зиме, скоро, наступит, зима, и, еды, не, будет"
var string = ""
var countSymbol = 0

for symbol in text {
    if symbol != "," {
        string += String(symbol)
        countSymbol += 1
    }
    if symbol == "," {
        print("\(string) - \(countSymbol-1) символов")
        string = ""
        countSymbol = 0
    }
}

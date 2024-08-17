import Foundation

func calculateDeposit(amount: Double, annualRate: Double, years: Int) -> Double {
    let finalAmount = amount * pow(1 + annualRate / 100, Double(years));
    return finalAmount;
}

let result = calculateDeposit(amount: 10000, annualRate: 5, years: 3);
print("Итоговая сумма: \(result)");

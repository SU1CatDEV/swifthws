let teaPrices: [String: Double] = ["Green Tea": 2.5, "Black Tea": 3.0, "Oolong Tea": 4.0, "White Tea": 5.0];
let orders: [String] = ["Green Tea", "Black Tea", "Oolong Tea", "White Tea", "Black Tea"];

for (index, tea) in orders.enumerated() {
	print("Покупатель \(index + 1) заказал \(tea), стоимость: \(teaPrices[tea]) долларов");
}

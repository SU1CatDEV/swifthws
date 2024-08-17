enum PizzaType: String {
    case margherita = "Margherita"
    case pepperoni = "Pepperoni"
    case hawaiian = "Hawaiian"
}

let selectedPizza = PizzaType.margherita;
print("Вы выбрали пиццу: \(selectedPizza.rawValue)");

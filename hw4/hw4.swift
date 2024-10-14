enum PizzaTypes {
	case margherita
	case pepperoni
	case hawaiian
	case vegetarian
	case cheese
}

enum Extras {
	case extraCheese
	case extraTomato
	case extraPepperoni
	case extraOlives
	case extraRanch
}

enum Crusts {
	case thick
	case thin
}

struct Pizza: Equatable {
	var type: PizzaTypes
	var price: Int
	var crust: Crusts
	var extras: [Extras]

	static func == (lhs: Pizza, rhs: Pizza) -> Bool {
		return lhs.type == rhs.type &&
			lhs.price == rhs.price &&
			lhs.crust == rhs.crust &&
			lhs.extras == rhs.extras
	}
}

class Pizzeria {
	var possiblePizzas: [Pizza] = [
		Pizza(type: .margherita, price: 500, crust: .thin, extras: []),
		Pizza(type: .pepperoni, price: 600, crust: .thin, extras: []),
		Pizza(type: .hawaiian, price: 600, crust: .thin, extras: []),
        Pizza(type: .vegetarian, price: 600, crust: .thin, extras: []),
		Pizza(type: .cheese, price: 500, crust: .thin, extras: []),
		Pizza(type: .margherita, price: 600, crust: .thick, extras: []),
		Pizza(type: .pepperoni, price: 700, crust: .thick, extras: []),
        Pizza(type: .hawaiian, price: 700, crust: .thick, extras: []),
        Pizza(type: .vegetarian, price: 700, crust: .thick, extras: []),
		Pizza(type: .cheese, price: 600, crust: .thick, extras: []),

		Pizza(type: .margherita, price: 550, crust: .thin, extras: [.extraCheese]),
		Pizza(type: .margherita, price: 550, crust: .thin, extras: [.extraTomato]),
		Pizza(type: .pepperoni, price: 650, crust: .thin, extras: [.extraCheese]),
        Pizza(type: .pepperoni, price: 650, crust: .thin, extras: [.extraPepperoni]),
		Pizza(type: .hawaiian, price: 650, crust: .thin, extras: [.extraCheese]),
        Pizza(type: .hawaiian, price: 650, crust: .thin, extras: [.extraOlives]),
        Pizza(type: .vegetarian, price: 650, crust: .thin, extras: [.extraOlives]),
        Pizza(type: .vegetarian, price: 650, crust: .thin, extras: [.extraTomato]),
		Pizza(type: .cheese, price: 550, crust: .thin, extras: [.extraCheese]),
		Pizza(type: .cheese, price: 550, crust: .thin, extras: [.extraRanch]),

		Pizza(type: .margherita, price: 650, crust: .thick, extras: [.extraCheese]),
		Pizza(type: .margherita, price: 650, crust: .thick, extras: [.extraTomato]),
		Pizza(type: .pepperoni, price: 750, crust: .thick, extras: [.extraCheese]),
        Pizza(type: .pepperoni, price: 750, crust: .thick, extras: [.extraPepperoni]),
		Pizza(type: .hawaiian, price: 750, crust: .thick, extras: [.extraCheese]),
        Pizza(type: .hawaiian, price: 750, crust: .thick, extras: [.extraOlives]),
        Pizza(type: .vegetarian, price: 750, crust: .thick, extras: [.extraOlives]),
        Pizza(type: .vegetarian, price: 750, crust: .thick, extras: [.extraTomato]),
		Pizza(type: .cheese, price: 650, crust: .thick, extras: [.extraCheese]),
		Pizza(type: .cheese, price: 650, crust: .thick, extras: [.extraRanch]),
	]

	var pizzas: [Pizza] = []
	func getPossiblePizzas() -> [Pizza] {
		return possiblePizzas
	}
	func addPizza(newPizza: Pizza) {
		if !possiblePizzas.contains(newPizza) {
			print("Невозможная пицца")
		} else {
			pizzas.append(newPizza)
		}
	}
}

let pizzeria = Pizzeria()

let margheritaPizza = Pizza(type: .margherita, price: 550, crust: .thin, extras: [.extraCheese])
let impossiblePizza = Pizza(type: .margherita, price: 650, crust: .thick, extras: [.extraOlives])
let cheesePizza = Pizza(type: .cheese, price: 500, crust: .thin, extras: [])

pizzeria.addPizza(newPizza: margheritaPizza)
pizzeria.addPizza(newPizza: impossiblePizza)
pizzeria.addPizza(newPizza: cheesePizza)

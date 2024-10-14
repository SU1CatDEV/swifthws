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

enum FriesSize {
    case small
    case medium
    case large
}

struct Fries {
    var size: FriesSize
    var price: Int
}

enum MenuItem {
    case pizza(Pizza)
    case fries(Fries)
}

protocol Openable {
    func open()
    func close()
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
  var menuItems: [MenuItem] = []

    func addMenuItem(newItem: MenuItem) {
        menuItems.append(newItem)
    }

}

extension Pizzeria: Openable {
    func open() {
        print("Пиццерия открыта")
    }

    func close() {
        print("Пиццерия закрыта")
    }
}

let pizzeria = Pizzeria()

let margheritaPizza = Pizza(type: .margherita, price: 550, crust: .thin, extras: [.extraCheese])
let mediumFries = Fries(size: .medium, price: 250)
let cheesePizza = Pizza(type: .cheese, price: 500, crust: .thin, extras: [])

pizzeria.open()
pizzeria.addMenuItem(newItem: .pizza(margheritaPizza))
pizzeria.addMenuItem(newItem: .fries(mediumFries))
pizzeria.addMenuItem(newItem: .pizza(cheesePizza))

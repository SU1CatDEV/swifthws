protocol PizzeriaMenuProtocol {
  var name: String { get }
  var cost: Double { get }
}

struct Pizza: PizzeriaMenuProtocol, Equatable {
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

  var name: String
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


struct Fries: PizzeriaMenuProtocol {
  enum FriesSize {
    case small
    case medium
    case large
  }

  var name: String
  var size: FriesSize
  var price: Int
}

protocol Openable {
  func open()
  func close()
}

class Pizzeria {
  var menuItems: [PizzeriaMenuProtocol] = []
  var workers: [PizzeriaWorkerProtocol] = []
  var tables: [Tables] = []

  init() {
    tables.append(Table(4, self))
    tables.append(Table(2, self))
    tables.append(Table(8, self))
    tables.append(Table(6, self))
    tables.append(Table(3, self))
  }

  func addMenuItem(newItem: PizzeriaMenuProtocol) {
    menuItems.append(newItem)
  }

  func addWorker(newWorker: PizzeriaWorkerProtocol) {
    workers.append(newWorker)
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
class Table {
    private Int seats
    weak var pizzeria: Pizzeria?

    init(seats: Int, pizzeria: Pizzeria) {
        self.seats = seats
        self.pizzeria = pizzeria
    }

    public Bool checkSeats(customers: Int) {
        return customers <= seats
    }
}
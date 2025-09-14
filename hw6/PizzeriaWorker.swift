protocol PizzeriaWorkerProtocol {
    var name: String
    var salary: Int
}

struct CashierPizzeriaWorker: PizzeriaWorkerProtocol {
    var name: String
    var salary: Int
}

struct CookPizzeriaWorker: PizzeriaWorkerProtocol {
    var name: String
    var salary: Int
}
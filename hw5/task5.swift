enum Number {
  case integer(Int)
  case double(Double)
}

func subtract(a: Number, b: Number) -> Number {
  switch (a, b) {
  case let (.integer(aValue), .integer(bValue)):
    return .integer(aValue - bValue)
  case let (.double(aValue), .double(bValue)):
    return .double(aValue - bValue)
  case let (.integer(aValue), .double(bValue)):
    return .double(Double(aValue) - bValue)
  case let (.double(aValue), .integer(bValue)):
    return .double(aValue - Double(bValue))
  }
}

print(subtract(a: .integer(2), b: .integer(3)))
print(subtract(a: .double(2.0), b: .double(3.0)))
print(subtract(a: .integer(2), b: .double(3.0)))
print(subtract(a: .double(2.0), b: .integer(3)))

var k = 9;

for i in stride(from: 11, through: 50, by: 2) {
    if (i + k) % 2 == 0 {
        k += 2;
    } else {
        print("Next");
    }
}

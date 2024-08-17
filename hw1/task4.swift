var k = 9;

for i in stride(from: 11, through: 49, by: 2) {
    if (i + k) % 2 == 0 {
        k += 1;
    } else {
        print("Next");
        break
    }
}

def is_prime(num: int) -> bool {
    if num <= 1 {
        return False;
    }
    
    i = 2;
    while i * i <= num {
        if num % i == 0 {
            return False;
        }
        i += 1;
    }
    
    return True;
}

with entry {
    input_str = input("Enter a number: ");
    num = int(input_str);
    
    if is_prime(num) {
        print(f"{num} is a prime number.");
    } else {
        print(f"{num} is not a prime number. Prime numbers are only divisible by 1 and themselves.");
    }
}

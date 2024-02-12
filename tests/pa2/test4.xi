// Precedence/Assoc Tests, Part 2
// This time with function calls and array accesses
foo(a:int):int{
    return a
}
foo2(b:bool):bool{
    return b
}
test4() {
    //Should be legal
    i: int[] = "Hello"
	b: bool[] = {true, true, false}

    x = foo(7) < i[0]
    x = foo(3) == (i[0] < 4)

    x = foo(3) < 3 & foo(3) >= 1
    x = foo(3) < 3 | foo(3) >= 9

    x = !b[0]
    x = b[-i[0]]

    x = foo(-5)
    x = -foo(5)
    
    x = foo2(!true)
	x = !foo2(false)

    x = foo2(!b[2] <= b[1])
    x = foo2(b[0] != b[2])
    x = foo2(b[0] & b[1] | b[2])

    x = foo(3) + 4
    x = foo(3 + 4)

    x = foo(9) + 5 * 1
    x = foo(9 + 5 * 1)
    x = 9 + foo(5) * 1
    x = 9 + foo(5 * 1)

    x = foo(foo(foo(i[2]))) 
    x = i[foo(foo(1))]
} 
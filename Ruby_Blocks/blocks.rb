"""You have seen how Ruby defines methods where you can put number
of statements and then you call that method. Similarly,
Ruby has a concept of Block.

A block consists of chunks of code.
You assign a name to a block.
The code in the block is always enclosed within braces ({}).
A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.
You invoke a block by using the yield statement.
"""

def test()
  puts("This is a test function")
  puts("Now calling block with the help of yield statement")
  yield
  puts("Now we are back to test function")
end

test {
  puts("This is a test block")
}

"""
We can also pass parameter to block with the help of yield statement
"""
def param_test()
  puts("Hey this is a parameter test function")
  yield "Muhammad Hasnain Ali"
  puts("Back to function now")
end

param_test {
 |param| puts ("#{param} is passed as parameter ")
}

"""
Multiple parameter test
"""
def test_multiple_params(&block)
  block.call(1,2,3)
end

test_multiple_params {
  |a, b, c| puts "#{a} #{b} #{c} are passed as parameters"
}

"""
BEGIN AND END BLOCK
"""
BEGIN {
  puts("This is BEGIN BLOCK. Put your code here which you want to run at start of program executions")

}

END {
  puts("This is a END BLOCK")
}

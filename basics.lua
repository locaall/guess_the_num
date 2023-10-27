-- Guess a random number

function main()
  math.randomseed(os.time())
  math.random()
  local number = math.random(1, 100)
  
  local guess
  local count = 0
  io.write("Guess the number (1-100): ")
  guess = io.read("*n")
  count = count + 1
  
  while guess ~= number do
    if guess > number then
      io.write(guess, " is too high.\n")
    elseif guess < number then
      io.write(guess, " is too low.\n")
    end
    
    io.write("Guess again: ")
    guess = io.read("*n")
    count = count + 1
  end
  io.write("You got it right after ", count, " times!\n")
end

main()
# Very dirty code to make some dirty gym...
# Test if reaching the end of the current exercise, print message in that case
# At the end reset counter to 0 for the next exercise

def hop_hop_hop(number_of_exercises)

counter=0
  while counter < number_of_exercises
    counter.times {print "hop! "}
    print "hop! One more time.." + "\n"
    counter += 1
  end
end

hop_hop_hop(6)

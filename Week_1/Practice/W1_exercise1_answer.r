### practice_1_answer
### BMI Caculator

# Create variable called my.height.cm with your actual height in cm 
my.height.cm <-174.5
  
  # Create variable called my.weight.cm with your actual weight in kg
  my.weight.kg <- 67
  
  # Create my.height.m transfered by my.height.cm  
  my.height.m <- my.height.cm/100
  
  # Create my.bmi with BMI(Body Mass Index) formula
  my.bmi <- my.weight.kg/(my.height.m)^2
  my.bmi <- my.bmi %% 0.01
  # Use if-else to print matched information
  # Reference: http://www.tpech.gov.taipei/ct.asp?xItem=1794336&CtNode=30678&mp=109171
  if (my.bmi >= 35) {
    print(paste("Your bmi: ", my.bmi))
    print("���תέD!")
  } else if (my.bmi >= 30) {
    print(paste("Your bmi: ", my.bmi))
    print("���תέD!")
  } else if (my.bmi >= 27) {
    print(paste("Your bmi: ", my.bmi))
    print("���תέD!")
  } else if (my.bmi >= 24) {
    print(paste("Your bmi: ", my.bmi))
    print("�L��!")
  } else if (my.bmi >= 18.5) {
    print(paste("Your bmi: ", my.bmi))
    print("���`�d��")
  } else {
    print(paste("Your bmi: ", my.bmi))
    print("�L��!")
  }
  
  
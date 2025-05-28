x = input('Enter your number: ');
fact = 1;
for i = 1:x
    fact = fact*i;
end
disp(['Factorial is: ' ,num2str(fact)]);
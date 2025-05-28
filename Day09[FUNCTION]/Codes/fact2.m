n = input('Enter the number: ');

function factorial = fact(n)
    if n < 0
        error('Factorial is not defined for negative numbers');
    elseif n == 0 || n == 1
        factorial = 1;
    else
        factorial = n * fact(n-1); 
    end
end

disp(['The factorial of ',num2str(n) ,' is:',num2str(fact(n))]);

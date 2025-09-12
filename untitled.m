function area = approx_area(x0, x1)
    % Function definition
    f = @(x) x.^2 - sin(x);
    
    % Number of sub-intervals (more gives better accuracy)
    n = 10000;  
    x = linspace(x0, x1, n);
    y = f(x);
    
    % Trapezoidal rule
    area = trapz(x, y);
end

% Test the function
result = approx_area(5, 1000);
fprintf('Approximate area = %.4f\n', result);
function [x,lambda] = power_method(A,x0,nit)  
	x = x0;  
	for n = 1:nit   
		xnew = A*x;   
		lambda = norm(xnew,inf)/norm(x,inf);   
		fprintf('n = %4d lambda = %g x = %g %g %g \n', n, lambda, x');
		x=xnew;
	end  
	x = x/norm(x); %normalise x  
	fprintf('n = %4d normalised x = %g %g %g\n', n, x');  
end 

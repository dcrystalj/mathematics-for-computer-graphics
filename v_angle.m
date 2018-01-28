function b = v_angle (a, b)
	if (a'*b == 0) b = 0;
	else           b = acos((a'*b)/(norm(a)*norm(b)));
	endif
endfunction

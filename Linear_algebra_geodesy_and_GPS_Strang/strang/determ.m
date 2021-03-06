function det = determ(A)
%DETERM Matrix determinant from PLU.
%	DETERM(A) computes the determinant of the square matrix A
%	as the sign of the permutation times the product of pivots.

[P,L,U,sign] = splu(A);
det = sign*prod(diag(U));

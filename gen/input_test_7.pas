program sort(input, output);
var a : array[1..50] of integer;
	x : integer;
	k : integer;
	i : integer;
	n : integer;

procedure swaps(var a, b : integer);
var temp : integer;
begin
	temp := a;
	a := b;
	b := temp
end;

procedure quicksort(l, r : integer);
	var i, j, mid, temp : integer;
	begin
		i := l;
		j := r;
		mid := a[(i+j) DIV 2];
		while(i <= j) do
		begin
			while(a[i] < mid) do i := i+1;
			while(a[j] > mid) do j := j-1;
			if i <= j then 
			begin
				swaps(a[i], a[j]);
				i := i+1;
				j := j-1
			end
		end;
		if i < r then quicksort(i, r);
		if j > l then quicksort(l, j)
	end;
	
begin
	i := 1;
	read(n);
	while(i<=n) do
	begin
		read(k);
		a[i] := k;
		i := i + 1
	end;
	quicksort(1, n);
	i := 1;
	while(i<=n) do
	begin
		write(a[i]);
		i := i + 1
	end
end.
//12 345 443 456 743 434 54 234 23 34 
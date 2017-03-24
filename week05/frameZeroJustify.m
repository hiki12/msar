function frameMat2=frameZeroJustify(frameMat, polyOrder);
	[row,column] = size(frameMat);
	x = 1:row;
	x = zscore(x');
	for i=1:column
		y = frameMat(:,i);
		p = polyfit(x,y,polyOrder);
		f = y-polyval(p,x);
		frameMat2(:,i) = f;
	end
end
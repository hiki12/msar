function outputSignal = mySine(duration, freq)
	f1 = freq(1);
	f2 = (freq(1)+freq(2))/2;
	fs = 16000;
	time = (0:(duration*fs-1))/fs;
	delta = (f2-f1)/(length(time)-1);
	f = (f1:delta:f2);
	outputSignal = sin(2*pi*f.*time);
end
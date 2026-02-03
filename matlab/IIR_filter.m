fc = 50;
fs = 1000;
order = 2;

[b, a] = butter(order, fc/(fs/2), 'low');
y = filter(b, a, x);

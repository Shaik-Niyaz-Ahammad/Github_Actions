function y = myController(u)
% Simple example controller: saturate and add offset
y = min(max(u, -1), 1) + 0.1 +0.1 + 1;
end
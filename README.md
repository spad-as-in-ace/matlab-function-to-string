# matlab-function-to-string
Allows users to easily convert function handles to strings for use in plots and labels

fixName() and toString() are exactly the same, the only difference is the name.
These methods take a function handel and return it as a string.
For example:

v0 = 300; g = 9.8.1; y = @(t) v0*t - (1/2) * g * t^2;


fixName(y) and toString(y) will return a string "y = v0*t-(1/2)*g*t^2".
fixName(y, "Height(t)") and toString(y, "Height(t)") will return a string "Height(t) = v0*t-(1/2)*g*t^2".

The first argument should be the function handle that is to be converted.
The second option is optional and sets the function name.


fixVar() replaces variables in a string with their decimal values.
Continuing the above example:

str = fixName(y);
% str = "y = v0*t-(1/2)*g*t^2"
fixVar(str, v0, 0, g, 2)

This will return the string "y = 300*t-(1/2)*9.81*t^2"

The first argument is the string, then all further arguments come in pairs.
The first argument in each pair is the variable, and the second is the number of digits after the decimal to be included.

Alternatively, a default number of decimals can be set for all variables.

fixVar(str, 2, v0, g)
This will return the string "y = 300.00*t-(1/2)*9.81*t^2"

The default value can be overriden, like this:

fixVar(str, 2, v0, 0, g)
This will return the string "y = 300*t-(1/2)*9.81*t^2"

The default value to truncate to is 2 decimal places. Any number of variables can be replaced with one function call.

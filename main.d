import std.stdio;
import std.string;
import std.complex;

double[2] solution = [0, 0];

double solve(double re, double im) {
    auto z = complex(re, im);
    auto result = z * z;
    solution[0] = result.re;
    solution[1] = result.im;
    return solution[0];
}

void main() {
    string equation = "x^2";
    string left = "(x)=";
    char title;
    double xr, xi;
    write("Insert name of function: ");
    readf(" %c", &title);
    auto func = title ~ left ~ equation;
    write("\nInsert x-r value: ");
    readf(" %f", &xr);
    write("\nInsert x-i value: ");
    readf(" %f", &xi);
    solve(xr, xi);
    writeln("\n\nThe solution to the equation \"", func, "\" for ", title, "(", xr, "+", xi, "i) is: ", solution[0], "+", solution[1], "i .");
}

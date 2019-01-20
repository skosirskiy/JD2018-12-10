package by.it.titkovskaya.Calc;

class Printer {
    public void print(Var result) {
        if (result != null)
            System.out.println(result);
    }

    void showError(CalcException e) {
        System.err.println(e.getMessage());
    }
}
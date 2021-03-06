package by.it.migunko.calc_v2_with_exception;

import java.util.Scanner;

public class ConsoleRunner {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String line;

        Parcer parser = new Parcer();
        Printer printer = new Printer();

        while (!(line = scan.nextLine()).equals("end")){
            try {
                Var result = parser.calc(line);
                printer.print(result);
            } catch (CalcException e) {
                System.out.println(e.getMessage());;
            }
        }
    }
}


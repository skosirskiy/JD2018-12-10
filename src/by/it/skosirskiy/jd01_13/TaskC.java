package by.it.skosirskiy.jd01_13;


import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class TaskC {
    static int index=0;
    public static Scanner scanner= new Scanner(System.in);
    public static List<Double> linkedList = new LinkedList<>();

    static void readData(Scanner scanner) throws InterruptedException {
        try {

            linkedList.add(scanner.nextDouble());
        }
        catch (Exception e){

            index++;
           Thread.sleep(100);
        return;
        }



    }

    public static void main(String[] args) throws Exception {

      //  Scanner scanner= new Scanner(System.in);

        while (!(index==5)) {
            readData(scanner);

        }
        System.out.println(linkedList);
    }
}
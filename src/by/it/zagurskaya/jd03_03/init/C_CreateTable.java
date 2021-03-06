package by.it.zagurskaya.jd03_03.init;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class C_CreateTable {
    public void readСommands(Connection connection) throws SQLException {

        String filePath = getPath(C_CreateTable.class, "cash_zagurskaya.sql");
        StringBuilder textFromFile = new StringBuilder();
        textFromFile = readTextFile(filePath, textFromFile);
        List<String> comandsCreateList = new ArrayList<>();
        comandsCreateList = readCommandsFromSqlToList(textFromFile);
        createTable(connection, comandsCreateList);
    }

    private static String getPath(Class<?> clazz, String filename) {
        String path = clazz.getName();
        path = path.replace(clazz.getSimpleName(), "");
        path = path.replace(".", File.separator);
        path = System.getProperty("user.dir")
                + File.separator + "src" + File.separator + path;
        return path + filename;
    }

    private static StringBuilder readTextFile(String path, StringBuilder textFromFile) {

        try (BufferedReader br = new BufferedReader(new FileReader(path))) {
            for (String value = br.readLine(); value != null; value = br.readLine()) {
                textFromFile.append(value).append('\n');
                int i = 0;
            }
            //  System.out.println("конец файла");
        } catch (IOException e) {
            System.err.println("что-то пошло не так, т.к. " + e.getMessage());
        }
        return textFromFile;
    }

    private static List<String> readCommandsFromSqlToList(StringBuilder text) {
        return Arrays.stream(Arrays.stream(text.toString()
                .split("\n"))
                .filter(s -> s.length() != 0)
                .filter(s -> !s.startsWith("-- "))
                .collect(Collectors.joining())
                .split(";"))
                .map(s -> s + ";")
                .filter(s -> s.startsWith("CREATE"))
                .collect(Collectors.toList());
//        System.out.println(createList);
    }

    private void createTable(Connection connection, List<String> commands) throws SQLException {
        try (Statement statement = connection.createStatement()) {
            for (String string : commands) {
                statement.executeUpdate(string);
            }
        }
    }
}

package by.it.moroz.jd03.project.java;

import javax.servlet.http.HttpServletRequest;

public class Form {

    static boolean isPost(HttpServletRequest req){
        return req.getMethod().equalsIgnoreCase("post");
    }

    static String getString(HttpServletRequest req, String name, String pattern) throws SiteException {
        String value = req.getParameter(name);
        if (value.matches(pattern))
            return value;
        else
            throw new SiteException("Value "+value+" incorrect");
    }

    public static int getInt(HttpServletRequest req, String numberphone, String pattern) throws SiteException {
        String number = req.getParameter(numberphone);
        if(number.matches(pattern))
            return Integer.parseInt(number);
        else
            throw new SiteException("Number "+ number+" incorrect");
    }

    public static int getInt(HttpServletRequest req, String numberphone) throws SiteException {
        return getInt(req, numberphone, ".*");
    }

    public static long getLong(HttpServletRequest req, String num) {
        String number = req.getParameter(num);
        //DAO.getDao().menu.read()
        return Long.parseLong(number);
    }

    public static double getDouble(HttpServletRequest req, String price) {
        String str = req.getParameter(price);
        return Double.parseDouble(str);
    }
}

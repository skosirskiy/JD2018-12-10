package by.it.a_khmelev.jd03_04.java;

import javax.servlet.http.HttpServletRequest;

public class CmdSignup implements Cmd{
    @Override
    public Action execute(HttpServletRequest req) throws Exception {
        return Action.SIGNUP;
    }
}
